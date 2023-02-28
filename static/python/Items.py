## Establish item classes here
    ## Want to be able to extend a base class with specific attributes based on the usecase
    ## Start with a base item and move on from there as you fill the db with realworld examples

########################
# BASE ITEM DEFINITION #
########################

class BaseItem:

    def __init__(self, item_name: str = None, quant: int = 0):
        self.item_name = item_name
        self.quant = quant

    def _set_quant(self, val: int):
        self.quant = val

    def _set_name(self, name: str = "Basic Item"):
        self.item_name = name

    def _get_name(self):
        return self.name

    def _get_quant(self):
        return self.quant


