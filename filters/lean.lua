local List = require 'pandoc.List'

current_code = ""

function CodeBlock(block)
    function encodeChar(chr)
        return string.format("%%%02X",string.byte(chr))
    end
     
    function encodeString(str)
        local output, t = string.gsub(str,"[^%w]",encodeChar)
        return output
    end

    if block.classes[1] == "lean" then
        lean_web_editor_url = "https://leanprover-community.github.io/lean-web-editor/#code="
        current_code = current_code .. encodeString(block.text .. "\n\n")
        construct_link = lean_web_editor_url .. current_code
        local try_me_link = pandoc.Link('Try me', construct_link)
        return pandoc.Div{block, pandoc.Para{ try_me_link} }
    end
end

