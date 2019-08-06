landmarks_list = {
    "BQE" => {
      :figure_id => 1,
      :year_completed => 1947
    },
    "Holland Tunnel" => {
      :figure_id => 5,
      :year_completed => 1927
    },
    "Wall Street Wall" => {
      :figure_id => 4,
      :year_completed => 1684
    },
    "Brooklyn Battery Tunnel" => {
      :figure_id => 10,
      :year_completed => 1973
    },
    "Madison Square Guarden" => {
      :year_completed => 1901
    },
    "The big bull outside" => {
      :year_completed => 1995
    },
    "Flatiron School" => {
      :year_completed => 2014
    },
    "Museum Mile" => {
      :year_completed => 1058
    },
    "Subway Station" => {
      :year_completed => 2015
    },
    "Cast Iron" => {
      :year_completed => 1951
    },
    "Shea Stadium" => {
      :year_completed => 1964
    },
    "Flatiron Building" => {
      :year_completed => 1902
    },
    "Brooklyn Bridge" => {
      :year_completed => 1883
    }
  }

landmarks_list.each do |name, landmark_hash|
  p = Landmark.new
  p.name = name
  landmark_hash.each do |attribute, value|
      p[attribute] = value
  end
  p.save
end

figure_list = {
    "Robert Moses" => {},
    "Al Smith" => {},
    "Theodore Roosevelt" => {},
    "Peter Stuyvesant" => {},
    "Boss Tweed" => {},
    "Michael Bloomberg" => {},
    "Ed Koch" => {},
    "Fiorello LaGuardia" => {},
    "Jimmy Walker" => {},
    "Belle Moskowitz" => {},
    "Billy The Kid" => {},
    "Mark Zuckerberg" => {},
    "Ada Lovelace" => {},
    "Linus Torvalds" => {}
  }

figure_list.each do |name, figure_hash|
  p = Figure.new
  p.name = name
  p.save
end


title_list = {
    "Mayor" => {
    },
    "President" => {
    },
    "Governer" => {
    },
    "NYC Parks commissioner" => {
    }
  }

title_list.each do |name, figure_hash|
  p = Title.new
  p.name = name
  p.save
end