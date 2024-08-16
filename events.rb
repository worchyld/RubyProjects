# simple events mgt app using ruby only
#
# add, list, delete events

require 'date'

class Event
    attr_accessor :name, :date, :attendees

    def initialize(name, date, attendees)
        @name = name
        @date = DateTime.parse(date)
        @attendees = attendees
    end
end

class EventManager
    def initialize 
        @events = []
    end

    def add_event(name, date, attendees)
        event = Event(name, date, attendees)
        @events << event
        puts "event added"
    end

    def list_events
        puts print_header
        @events.sort_by(&:date).each {|event| printf(format_event(event))}
        puts print_footer
    end

    def delete_events(name)
        @events.delete_if {|event| event.name == name}
    end

    def write_events_to_file
        filename = 'events.txt'
        File.open(filename, 'w') do  |file|
            file.puts print_header
            @events.sort_by(&:date).each {|event| file.printf(format_event(event))}

            file.puts print_footer
        end
    end

def format_event(event)
    attendees_str = event.attendees.join(', ')
    attendees_str = attendees_str[0..24] + (attendees_str.length > 24 ? '...' : '')
    "| %-33s | %-10s | %-23s |\n" % [event.name, event.date.strftime('%d/%m/%Y'), attendees_str]
end


def print_header
    "+-----------------------------------+------------+-------------------------+\n" +
    "| Name                              | Date       | Attendees               |\n" +
    "+-----------------------------------+------------+-------------------------+"
end


def print_footer
    "+-----------------------------------+------------+-------------------------+"
end
  
end

def main
    manager = EventManager.new
    loop do
        puts "1 .. Add event"
        puts "2 .. List events"
        puts "3 .. Delete events"
        puts "4 .. Save to file"
        puts "5 .. Exit"

        puts "\rEnter your choice: "
    end
end

