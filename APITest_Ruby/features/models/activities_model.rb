class ActivitiesModel
    attr_accessor :id, :title, :dueDate, :completed

    def activity_hash
        {
            id: @id,
            title: @title,
            dueDate: @due_date,
            completed: @completed
        }
    end 
end 