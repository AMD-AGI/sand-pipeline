import matplotlib.pyplot as plt
import seaborn as sns
import matplotlib.ticker as mticker
import numpy as np
import json
import collections
import os
import numpy as np
import pandas as pd

def difficultyScoring():

    output_filename = "figures/aime_hard_diffrated.pdf"        
    data = pd.DataFrame()

    datasets = {
        'SAND-Math': "aime_hard_diffrated.jsonl",
        'AIME': "aime_test_diffrated.jsonl",
        'MATH500': "math500_diffrated.jsonl",        
        'OpenMathInstruct-2': "omiv2_diffrated.jsonl",
        'MMIQC': "mmiqc_diffrated.jsonl",

    }

    for name, path in datasets.items():
        print(f"Processing: {name}")
        diff_socres = []
        zeros_count = 0
        with open(path, 'r') as f:
            for line in f:
                record = json.loads(line.strip())
                if record["rating"] > 0:
                    diff_socres.append(record["rating"])
                else:
                    zeros_count += 1
        print(f"[{name}] Total records count: {zeros_count + len(diff_socres)} \n Percent of zeros: {zeros_count / (zeros_count + len(diff_socres))}")
        df = pd.DataFrame(data=zip([name]*len(diff_socres), diff_socres), columns=["dataset", "rating"])
        df = df.groupby(['dataset', 'rating']).size().reset_index(name='count')
        df["density"] = df["count"] / df["count"].sum()
        ## removign less than 1%
        df = df[df["density"] > 0.01]
        data = pd.concat([data, df], ignore_index=True)
        
    print(data)
    print(f"Means")
    print(data.groupby("dataset", as_index=False).agg({'rating':'median'}))


    ## plotting
    # === Plot 1: Line Plot ===
    plt.style.use('seaborn-v0_8-paper') # Publication-ready style
    plt.figure(figsize=(6, 4)) # Adjust figure size as needed

    sns.lineplot(
        data=data,
        x='rating',
        y="density",
        hue='dataset',
        style = 'dataset',
        markers= True, # Add markers to distinguish points
        linewidth=2,
        markersize=6
    )

    plt.xlabel("Difficulty Rating", fontsize=12)
    plt.ylabel("Density", fontsize=12)
    # plt.title(title, fontsize=14, pad=15) # Added padding
    # plt.xticks(range(1, 11)) # Ensure all ratings 1-10 are shown as ticks
    # plt.grid(True, axis='y', linestyle='--', alpha=0.7)
    plt.legend(title='Dataset', bbox_to_anchor=(1.02, 1), loc='upper left') # Move legend outside
    plt.tight_layout(rect=[0, 0, 0.88, 1]) # Adjust layout to make space for legend

    # Save the line plot
    plt.savefig("figures/difficulty_distribution_lineplot.pdf", bbox_inches='tight') # Save as PDF (vector format)
    plt.savefig(f"figures/difficulty_distribution_lineplot.png", dpi=300, bbox_inches='tight')
    print("Saved line plot.")

    # === Plot 2: grouped bar plot ===
    
    
    g = sns.catplot(
        data=data, kind="bar",
        x="rating", y="density", hue="dataset",
        palette="dark", alpha=.6, height=6, aspect=2.5 
    )
    # sns.move_legend(g, "best")
    # g.despine(left=True)
    g.set_axis_labels("Difficulty Rating", "Density")
    g.legend.set_title("dataset")

  
    # Save the figure as PDF  
    g.savefig(output_filename, format='pdf', dpi=300, bbox_inches='tight') 
  
    # Close the plot figure to free memory  
    plt.close(g.fig)
    
    print(f"Bar plot saved successfully to '{output_filename}'")

    # === Plot 3: Rigid bar plot ===

    # --- Styling ---
    sns.set_theme(style="white", rc={"axes.facecolor": (0, 0, 0, 0),
                                     "figure.facecolor": "white"})
    plt.style.use('seaborn-v0_8-paper')

    num_datasets = data['dataset'].nunique()
    pal = sns.color_palette("viridis", num_datasets)

    # --- Create the FacetGrid ---
    g = sns.FacetGrid(data,
                      row="dataset",
                      hue="dataset",
                      aspect=6,
                      height=1.0,
                      palette=pal)
                      

    # --- Map the Kernel Density Estimate using map_dataframe ---
    # Pass the plotting function (sns.kdeplot) and specify columns using keywords
    g.map_dataframe(sns.kdeplot,        # <<< Use map_dataframe
                    x="rating",         # <<< Specify x column
                    weights="density",  # <<< Specify weights column
                    bw_adjust=0.5,
                    clip_on=False,
                    fill=True,
                    alpha=0.7,
                    linewidth=1.5)

    g.map_dataframe(sns.kdeplot,        # <<< Use map_dataframe
                    x="rating",         # <<< Specify x column
                    weights="density",  # <<< Specify weights column
                    bw_adjust=0.5,
                    clip_on=False,
                    color="w",                    
                    linewidth=2)
     # --- Add the horizontal baseline ---
    # Using g.refline draws lines relative to the data on each facet's y=0
    g.map(plt.axhline, y=0, lw=2, clip_on=False)

    # --- Add Labels and Adjust Layout ---
    # Define a function to add dataset labels to the left of each facet
    def label(x, color, label):
        ax = plt.gca()
        ax.text(0.01, .2, # Adjust x position slightly away from edge
                label,
                fontweight="bold",
                fontsize=11, # Adjust font size if needed
                color=color, # Use the hue color (matched to plot)
                ha="left",   va="center",
                transform=ax.transAxes) # Use axes coordinates

    g.map(label, "rating") # Map the labeling function

    # Set the subplots to overlap significantly
    g.figure.subplots_adjust(hspace=-0.6) # Adjust overlap (more negative = more overlap)

    # --- Clean up Axes and Titles ---
    g.set_titles("") # Remove the automatic subplot titles
    g.set(yticks=[]) # Remove y-axis ticks and labels
    g.set_axis_labels("Difficulty Rating", "") # Set shared x-axis label at the bottom
    g.despine(bottom=True, left=True) # Remove outer spines

    # --- Configure Shared X-axis Ticks/Limits ---
    # Apply directly to the FacetGrid object for the shared axis
    # g.set(xticks=np.arange(1, 7)) # Set ticks explicitly from 1 to 10
    # g.set(xlim=(0.5, 10.5))       # Set limits slightly wider than ticks
    # plt.setp(ax.get_xticklabels(), fontsize=15, fontweight='bold')
    plt.xlabel("Difficulty Rating", fontsize=11)


    # --- Add Overall Title ---
    # plt.suptitle(title, y=1.02, fontsize=14)

    # --- Save and Show ---
    filename_base = "difficulty_ridgeline"
    plt.savefig(f"figures/{filename_base}.pdf", bbox_inches='tight')
    plt.savefig(f"figures/{filename_base}.png", dpi=300, bbox_inches='tight')
    print(f"Saved Ridgeline plots as {filename_base}.pdf and {filename_base}.png")

    
    


def modelDepenedentDifficulty():
    output_filename = "figures/aime_hard_modelrateddiffs.pdf"

    models = ["Qwen2.5-3B", "Qwen2.5-7B", "Qwen2.5-14B", "Qwen2.5-32B", "LIMO-32B", "EXAONE-32B"] + ["Qwen2.5-3B", "Qwen2.5-7B", "Qwen2.5-14B", "Qwen2.5-32B", "LIMO-32B", "EXAONE-32B"]
    dataset = ['SAND-Math'] * 6 + ['AIME24'] * 6
    pass1 = [0.13, 0.15, 0.18, 0.24, 0.53, 0.86] + [0.01, 0.02, 0.08, 0.15, 0.57, 0.80] + [0.01, 0.02, 0.08, 0.15, 0.57, 0.80]
    


    data = pd.DataFrame(data=zip(models,dataset,pass1), columns=["models", "dataset", "pass1"])
    
    sns.set_style("white")
    # Draw a nested barplot by species and sex
    g = sns.catplot(
        data=data, kind="bar",
        x="models", y="pass1", hue="dataset",
        palette="dark", alpha=.6, height=4
    )
    # sns.move_legend(g, "best")
    # g.despine(left=True)
    g.set_axis_labels("", "Pass@1")
    g.legend.set_title("datastes")

    # Optional: Rotate x-axis labels if they overlap  
    g.set_xticklabels(rotation=45, ha='right')
    
    # g.fig.tight_layout() 
  
    # Save the figure as PDF  
    g.savefig(output_filename, format='pdf', dpi=300, bbox_inches='tight') 
  
    # Close the plot figure to free memory  
    plt.close(g.fig)

if __name__ == "__main__":
    difficultyScoring()
    # modelDepenedentDifficulty()