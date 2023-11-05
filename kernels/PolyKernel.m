classdef PolyKernel < handle
    
    properties (Access = private)
        degree;
    end
    
    methods (Access = public)
        
        function this = PolyKernel(degree)
            arguments
                degree (1,1) double {mustBePositive, mustBeInteger}
            end
            
            this.degree = degree;
        end
        
        function K = compute(this, Xtrain, Xtest)
            arguments
                this
                Xtrain (:,:) double
                Xtest (:,:) double = Xtrain
            end
            
            K = (Xtrain * Xtest' + 1).^this.degree;
        end
    end
    
end

