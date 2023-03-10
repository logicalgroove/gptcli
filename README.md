# GptCli - A CLI Tool for Generating Code Snippets and Templates with OpenAI API

GptCli is a command-line tool that helps developers generate code snippets and templates using the OpenAI API. With GptCli, developers can quickly create code blocks for a variety of programming languages and frameworks, including Python, JavaScript, Ruby, and more.

## Installation

Get your OpenAI API key at [OpenAI website](https://beta.openai.com/signup/).

`cp .env-example .env`

Add you key to .env file.

Create a symbolic link in local executable folder:

`ln -s $PWD/gptcli /usr/local/bin/`

## Usage

To use GptCli, run the following command:

### Generate code snipets and scaffolds

`gptcli "Create a rake task with namespace pmo123 and name Remove all tags", "pmo123.rake"`

The first parameter is the prompts, the second is the file name where the result is stored.

If the filename is not provided, it will be saved in `gpt_output-2023-03-07_17:05:43.txt`

### Create a git commit message of the current diff

`gptcli gcm`

It will print out the commit message.

## Contributing

Contributions are welcome! If you have any feature requests or bug reports, please submit an issue or a pull request.

## License

GptCli is released under the MIT License. See [LICENSE](LICENSE) for details.
