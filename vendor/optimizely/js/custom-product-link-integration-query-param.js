// This extension integrates Optimizely w/ sho.com via a query parameter string that can be appended to outgoing product links.
var decisionString = window.optimizely.get('state').getDecisionString({campaignId: campaignId, shouldCleanString: true});

// Public Methods
var queryParamIntegrator = {
	// Array of objects for active campaigns/experiments
	campaignArray: []
};

// Scopes `campaignArray` to Optimizely object.
if (!window.optimizely.get("custom/queryParamIntegrator")) {
	window.optimizely.push({
		type: "registerModule",
		moduleName: "queryParamIntegrator",
		module: queryParamIntegrator
	});
}

// Failing Audiences returns `null`, failing Traffic Allocation returns `undefined` for decisionString.
if (!!decisionString) { 
  window.optimizely.get("custom/queryParamIntegrator").campaignArray.push(decisionString);
}