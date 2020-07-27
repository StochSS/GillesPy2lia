module GillesPy2

using PyCall

function __init__()
    return py"""
    import gillespy2
    import numpy
    
    class Model(gillespy2.Model):
        def __init__(self, name="Model", parameter_values=None):
            gillespy2.Model.__init__(self, name=name)
            self.timespan(numpy.linspace(0,100,101))  
    """
end

model() = py"Model"()
parameter(name, expression) = py"gillespy2.Parameter"(name=name, expression=expression)
species(name, initial_value) = py"gillespy2.Species"(name=name, initial_value=initial_value)
reaction(name, reactants, products, rate) = py"gillespy2.Reaction"(name=name, reactants=reactants, products=products, rate=rate)
event_trigger(expression) = py"gillespy2.EventTrigger"(expression=expression)
event_assignment(variable, expression) = py"gillespy2.EventAssignment"(variable=variable, expression=expression)
event(name, trigger, assignments) = py"gillespy2.Event"(name=name, trigger=trigger, assignments=assignments)

end
