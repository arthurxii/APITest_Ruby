module Rest 
    class Activities 
        include HTTParty

        headers 'Content-Type' => 'application/json'
        base_uri CONFIG['base_uri']

        def get_activities
            self.class.get('/api/v1/Activities')
        end 

        def get_activity(id)
            self.class.get("/api/v1/Activities/#{id}")
        end

        def post_activities(activity)
            self.class.post('/api/v1/Activities', body: activity.to_json)
        end
    end 
end 