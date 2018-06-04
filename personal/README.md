### Startup Python IDE:
1) open code/repos/web
1) M-x pipenv-mode
1) M-x pipenv-activate

## Confirm startup worked:
1) Open server/dad/tests/test_graphql_auth.py
1) M-x flycheck-verify-setup
1) Confirm that the path to flake8 is in a venv path like this:
    - `flake8' module:    Found at "/Users/ahonnecke/.local/share/virtualenvs/web-6EpGRwxA/lib/python3.6/site-packages/flake8/__init__.py"


Press C-s to switch to incremental search mode
Press C-w to yank the current word into the search buffer You can keep pressing it to append multiple words, and you can also use C-M-y to yank individual characters and C-y to yank whole lines
Press M-% to switch to replace mode using the search buffer you've already constructed
As you probably know from using M-% normally, this is a query replace mode where it prompts you for what to do with each match. If you just want to replace them all, hit ! on the first match




        from pudb.remote import set_trace
        set_trace(term_size=(160, 40), host='0.0.0.0', port=6900)


telnet 127.0.0.1 6900



M-x pythonic-activate
/Users/ahonnecke/.local/share/virtualenvs/web-6EpGRwxA
