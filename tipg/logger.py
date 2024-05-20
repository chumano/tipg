"""tipg logger."""
import os
import logging

logging.basicConfig(level=logging.DEBUG) 

logger = logging.getLogger("tipg")

#print("DEBUG", os.environ['DEBUG'], logger.disabled, logger.isEnabledFor(logging.DEBUG))
#logger.debug("=====================LOGGER_DEBUG=============")
