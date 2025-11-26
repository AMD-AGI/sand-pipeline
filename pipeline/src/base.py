# src/base.py
from abc import ABC, abstractmethod
import logging
from typing import Dict, Any

class PipelineStep(ABC):
    """
    Abstract Base Class that all pipeline steps must inherit from.
    """
    
    def __init__(self, name: str, step_config: Dict[str, Any] = None):
        self.name = name
        self.config = step_config or {}
        self.logger = logging.getLogger(self.name)

    @abstractmethod
    def process(self, input_file: str, output_file: str) -> None:
        """
        Logic to read from input_file, process data, and write to output_file.
        """
        pass

    def run(self, input_file: str, output_file: str):
        """
        Wrapper around process to handle logging and common error handling.
        """
        self.logger.info(f"Starting step: {self.name}")
        self.logger.info(f"Input: {input_file} -> Output: {output_file}")
        
        try:
            self.process(input_file, output_file)
            self.logger.info(f"Completed step: {self.name}")
        except Exception as e:
            self.logger.error(f"Failed at step {self.name}: {str(e)}")
            raise e