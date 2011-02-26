(function () { 
    
    // create tests idspace
    window.tests = {};

    // DSL for creating tests;
    window.test = function (id, description, fn) { 
	fn.id = id; 
	fn.description = description; 
	tests[id] = fn; 
    }

    var TestCase = window.TestCase = function (fn) {
	this._fn = fn; 
    };

    Object.extend(TestCase, {
	create: function (id) { 
	    var test = window.tests[id]; 
	    if (test !== undefined && typeof test == "function") { 
		return new TestCase(test); 
	    }
	    return null;
	}
    });

    Object.extend(TestCase.prototype, {

	id: function () { 
	    return this._fn.id;
	},
	
	description: function () { 
	    return this._fn.description;
	},

	start: function () { 
	    this.startedAt = new Date();
	    var val = (this._fn() === false) ? false : true; 
	    this.endedAt = new Date();
	    return val; 
	},

	result: function () { 
	    return this.endedAt.valueOf() - this.startedAt.valueOf();
	}
	
    });

})(); 