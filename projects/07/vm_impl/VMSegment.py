__author__ = 'Maxim'
from enum import Enum


class VMSegmentTypes(Enum):
    SP = 0                   #==0
    LOCAL = 1                #==1
    ARGUMENT = 2             #==2
    THIS = 3                 #==3
    THAT = 4                 #==4
    TEMP = 5                 #<=12
    GENERAL_PURPOSE = 13      #<=15
    STATIC = 16               #<=255
    CONSTANT = "constant"
    POINTER = "pointer"


def get_segment_type(seg_name):
    return {
        "static": VMSegmentTypes.STATIC,
        "argument": VMSegmentTypes.ARGUMENT,
        "local": VMSegmentTypes.LOCAL,
        "constant": VMSegmentTypes.CONSTANT,
        "this": VMSegmentTypes.THIS,
        "that": VMSegmentTypes.THAT,
        "pointer": VMSegmentTypes.POINTER,
        "temp": VMSegmentTypes.TEMP
    }[seg_name]




