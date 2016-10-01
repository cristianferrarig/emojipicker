# https://github.com/banyan/react-emoji/blob/master/src/react-emoji.js
# http://banyan.me/react-emoji/

# https://github.com/banyan/emoji-annotation-to-unicode/blob/master/emoji-annotation-to-unicode.js
# https://github.com/banyan/emoji-emoticon-to-unicode/blob/master/emoji-emoticon-to-unicode.js
# https://api.github.com/emojis
# https://github.com/Ranks/emojione/blob/master/lib/js/emojione.js



React = require('react')


@Emojipicker = React.createClass

  getInitialState: ->
    emoji_groups: 
      [
        {
          'name': 'recent'
          'emojis': ['👍', '😃', '👿', '🏃', '🙊', '😊', '👀', '👏' ]
        }
        {
          'name': 'people'
          'emojis': [
            '😃', '😀', '😊', '😉', '😍', '😘', '😚', '😗', '😙', '😜', 
            '😝', '😛', '😳', '😁', '😔', '😌', '😒', '😞', '😣', '😢', 
            '😂', '😭', '😪', '😥', '😰', '😅', '😓', '😩', '😫', '😨', 
            '😱', '😠', '😡', '😤', '😖', '😆', '😋', '😷', '😎', '😴', 
            '😵', '😲', '😟', '😦', '😧', '👿', '😮', '😬', '😐', '😕', 
            '😯', '😏', '😑', '👲', '👳', '👮', '👷', '💂', '👶', '👦', 
            '👧', '👨', '👩', '👴', '👵', '👱', '👼', '👸', '😺', '😸', 
            '😻', '😽', '😼', '🙀', '😿', '😹', '😾', '👹', '👺', '🙈', 
            '🙉', '🙊', '💀', '👽', '💩', '🔥', '✨', '🌟', '💫', '💥', 
            '💢', '💦', '💧', '💤', '💨', '👂', '👀', '👃', '👅', '👄', 
            '👍', '👎', '👌', '👊', '✊', '👋', '✋', '👐', '👆', '👇', 
            '👉', '👈', '🙌', '🙏', '👏', '💪', '🚶', '🏃', '💃', '👫', 
            '👪', '💏', '💑', '👯', '🙆', '🙅', '💁', '🙋', '💆', '💇', 
            '💅', '👰', '🙎', '🙍', '🙇', '🎩', '👑', '👒', '👟', '👞', 
            '👡', '👠', '👢', '👕', '👔', '👚', '👗', '🎽', '👖', '👘', 
            '👙', '💼', '👜', '👝', '👛', '👓', '🎀', '🌂', '💄', '💛', 
            '💙', '💜', '💚', '💔', '💗', '💓', '💕', '💖', '💞', '💘', 
            '💌', '💋', '💍', '💎', '👤', '💬', '👣'
          ]
        }
      ]
    

  render: ->
    return (
      <Emojipicker.App>

        {
          @state.emoji_groups.map (item, i)=>
            <div>
              <Emojipicker.Heading 
                title={item.name}
              />
              <Emojipicker.Group 
                collection={item.emojis}
              />   
            </div>
        }

      </Emojipicker.App>
    )



@Emojipicker.App = React.createClass
  render: ->
    return (
      <div id="content" className="emojipicker">

        <Emojipicker.Search/>

        <Emojipicker.Panel>
          { @props.children }
        </Emojipicker.Panel>

        <Emojipicker.Tabs/>

      </div>
    )

@Emojipicker.Tabs = React.createClass
  render: ->
    return (
      <div className="emojipicker-tabs">
        <span className="emojipicker-tab">🕒</span>
        <span className="emojipicker-tab">😃</span>
        <span className="emojipicker-tab">🌸</span>
        <span className="emojipicker-tab">🔔</span>
        <span className="emojipicker-tab">🚙</span>
        <span className="emojipicker-tab">💱</span>
      </div>
    )

@Emojipicker.Search = React.createClass
  render: ->
    return (
      <input className="emojipicker-search" placeholder="Buscar"/>
    )

@Emojipicker.Panel = React.createClass
  render: ->
    return (
      <div className="emojipicker-container">
        <div className="emojipicker-panel">
          { @props.children }
        </div>
      </div>
    )

@Emojipicker.Heading = React.createClass
  render: ->
    return (
      <div className="emojipicker-heading">
        { @props.title }
      </div>
    )

@Emojipicker.Group = React.createClass
  render: ->
    return (
      <div className="emojipicker-group">
        {
          @props.collection.map (item, i)=>
            <Emojipicker.Icon icon={item}/>
        }
      </div>
    )

@Emojipicker.Icon = React.createClass
  render: ->
    return (
      <span className="emojipicker-icon">
        { @props.icon }
      </span>
    )

module.exports = @Emojipicker
