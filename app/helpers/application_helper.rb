module ApplicationHelper

    
    def update_params(params)
        params.reject{|k, v| v.blank?}
    end

    def record_owner?(record)
      record.user === current_user
    end
end
