## Huemore

Playing around with the Philips Hue and Sonos API.

### sinatra-speech

Only works on OS X, because it uses the build in `say` command for text2speech synthesis.

Run `ruby sinatra-speech.rb` to expose a webserver that turns text into mp3.
Thy this: [http://0.0.0.0:4567/Hello+World!.mp3](http://0.0.0.0:4567/Hello+World!.mp3).

### console.rb

Start an IRB console with 2 instance variables:

* `@sonos`: a sonos client to your local sonos system. See [soffes/sonos](https://github.com/soffes/sonos)
* `@hue`: a philips hue client. See [soffes/hue](https://github.com/soffes/hue)

You can use the above speech server to make your sonos talk:
(assuming your mac's ip is 192.168.0.14)

```ruby
speaker = @sonos.speakers.first
speaker.voice_over! 'http://192.168.0.14:4567/Hello+World!.mp3'
```
