# Anti Spoof GiveWeapon (Nexus/Phaze)

This project introduces an **Anti-Spoof GiveWeapon** script designed to enhance server security by preventing unauthorized weapon grants. Implemented with flexibility in mind, this script allows you to integrate your preferred ban system seamlessly.

## Features

- **Prevent unauthorized weapon grants**: Ensures that only legitimate weapon transactions are processed.
- **Customizable integration**: Easily replace the ban system with your own.
- **Lightweight and efficient**: Designed to have minimal performance impact on your server.
- **Last updated**: 15-1-2025 | 22:06

## Installation

1. **Download and Extract**
   - Download the script files from this repository.
   - Place the script into the appropriate directory within your server resource folder.

2. **Modify `server.lua`**
   - Open the `server.lua` file in your preferred text editor.
   - Locate the placeholder for the ban system integration.
   - Replace it with your server's ban system logic.

   Example snippet for integrating a custom ban system:
   ```lua
   function banPlayer(playerId, reason)
       exports['fiveguard']:fg_banPlayer(playerId, reason)
   end
   ```

3. **Start the Resource**
   - Add the resource to your server's configuration file (`server.cfg`):
     ```
     ensure AntiSpoofGiveWeapon
     ```

4. **Restart Your Server**
   - Restart your server to apply the changes.

## Configuration

- **Ban System Integration**
  - As mentioned above, the script is equipped with a placeholder function for handling bans. Replace this function with your ban system's API or logic.

## Notes

- Test your ban system integration in a controlled environment to ensure it works as intended before deploying to a live server.


## Changelog

**Last Patch:** 15-1-2025 | 22:06

- Improved compatibility with Nexus and Phaze frameworks.
- Added placeholders for ban system integration

## Contributing

Contributions to improve the script are welcome! Feel free to fork this repository and submit a pull request.

## License

This project is licensed under the MIT License. See the `LICENSE` file for details.

## Support

If you encounter any issues or have suggestions, please open an issue on this repository. Your feedback is appreciated!