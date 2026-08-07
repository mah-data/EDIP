class EDIPException(Exception):
    """
    Base exception for EDIP platform.
    """
    pass


class DatabaseConnectionError(EDIPException):
    """
    Raised when database connection fails.
    """
    pass


class MetadataExtractionError(EDIPException):
    """
    Raised when metadata extraction fails.
    """
    pass