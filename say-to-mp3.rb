require 'tempfile'

def say_to_mp3(txt, voice: 'karen')
  mp3_file = Tempfile.new(['out', '.mp3'])
  Tempfile.open(['say','.aiff']) do |aiff_tmp|
    Process.wait spawn('say', txt, "-v#{voice}", "-o#{aiff_tmp.path}")
    Process.wait spawn('lame', aiff_tmp.path, mp3_file.path)
  end
  return mp3_file
end
