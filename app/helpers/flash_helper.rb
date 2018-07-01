module FlashHelper
    def flash_class klass
        val = 'alert alert-' + case klass
        when 'alert', 'danger'
            'danger'
        when 'notice', 'success'
            'success'
        else
            'info'
        end
    end
end