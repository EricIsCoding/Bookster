module ApplicationHelper

    
    def update_params(params)
        params.reject{|k, v| v.blank?}
      end
end
