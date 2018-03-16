module ApplicationCable
  class Connection < ActionCable::Connection::Base
    identified_by :current_user

    def connect
      self.current_user = find_verfieid_user
      logger.add_tags 'ActionCable', current_user.email
      logger.add_tags 'ActionCable', current_user.id

    end
  end
end
