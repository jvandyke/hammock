<form action="{$this->getEditUrl()}&save=1" method="post">

    <p>Channel to post to: <select name="channel">
        {foreach from=$channels key='chan_id' item='chan_name'}
            <option value="{$chan_id|escape}"{if $chan_id==$this->icfg.channel} selected{/if}>{$chan_name|escape}</option>
        {/foreach}
    </select></p>

    <p>Bot name: <input type="text" name="botname" value="{$this->icfg.botname|escape}" /></p>
    <p>Base url: <input type="text" name="base_url" value="{$this->icfg.base_url|escape}" /></p>

    <p><input type="submit" value="Save Changes" class="btn" /></p>

</form>