
![So You Want To Write a Lua Script](https://i.imgflip.com/8v65ni.jpg)

# How to Learn to Program

If you're totally new to programming,
watch this video to help get you in the right head-space.

[How to Learn to Code](https://www.youtube.com/watch?v=mvK0UzFNw1Q)

tl;dr Don't get hung up on the details, just jump in and start having fun building something.

# Hello World for Stand Lua

As tradition when learning a new language, your first task should be a
simple script that prints the message "Hello World!".

1. Create a new text file  in `Stand/Lua Scripts`, something like `MyScript.lua`
2. Within this file, add the following text
```lua
menu.my_root():action("My Action", {}, "", function()
    util.toast("Hello World!")
end)
```
3. Save the file
4. Open your Lua Scripts folder in the menu, at `Stand > Lua Scripts`.
   You may need to reload the list to see your new file.
5. Run your script by selecting it in the list and then choosing `Start Script`
6. Once your script is running, it should display your custom action, `My Action`.
   Select `My Action` to trigger the "Hello World!" message on your screen.
7. You did it! 🎉 You can add Stand Lua Scripter to your resume!

# What is the Hello World script doing?

1. `menu.my_root()` returns a reference to your scripts menu root, which can then be used for adding new menu options to.
2. Using the reference to our scripts root menu, we can call it's `action()` function to create a new action menu item.
3. The `action()` function accepts several parameters
- Name. The name of the option in the menu.
- Commands List. Commands are used by the command box or chat to trigger commands.
- Help. The description help text that displays when this option is selected.
- Handler. The function that executed when this action is triggered.
4. Within the action handler, we display a message to the screen using the `util.toast()` function.

# Where to go from here?

You probably have some idea in your head for a feature you want to add to Stand,
but how do you build it? Start small and take it step-by-step.
Spend some time reading through the docs and other Lua Scripts and see how they work.
If you get stuck the Stand discord #programming channel might be helpful, 
but don't expect to be spoonfed answers.

# Documentation References

Each of these pages is worth bookmarking, and will likely be referenced often
while working on scripts.

- [Stand API Reference](https://std.gg/scripting) -
The Stand API is used for interacting with the Stand menu, for everything from creating new menu items
to helper functions to make interacting with the game engine easier.
- [GTA Natives Reference](https://nativedb.dotindustries.dev/natives) -
The internal game functions of GTA exposed for scripts to use. These are intended to be used for internal scripts,
but they are available and very useful to interact with the game world.
- [Lua Language Reference](https://www.lua.org/manual/5.4/manual.html) - 
A detailed and authoritative introduction to all aspects of Lua programming written by Lua's chief architect.
  - [Learn Lua in X Minutes](https://learnxinyminutes.com/docs/lua/) - 
  A quickstart guide to the Lua language.
- [Pluto Language Reference](https://pluto.do/docs) - 
Stand runs a super-set of Lua called Pluto that extends and enhances the standard Lua library.
These optional extensions to the Lua language can be very useful.
