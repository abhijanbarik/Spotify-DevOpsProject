resource "spotify_playlist" "English-JAM" {
  name   = "StayMotivatedSongs"
  tracks = ["4Arjo1XR9qXsLstvU9fFV3", "2HHtWyy5CgaQbC7XSoOb0e"]
}

data "spotify_search_track" "eminem" {
  artist = "Eminem"
  //You can set a limit over here as well for the PlayList.
}

resource "spotify_playlist" "SlimShady" {
  name = "SlimShady"
  tracks = [data.spotify_search_track.eminem.tracks[0].id,
    data.spotify_search_track.eminem.tracks[1].id,
    data.spotify_search_track.eminem.tracks[2].id,
  data.spotify_search_track.eminem.tracks[3].id]
}
