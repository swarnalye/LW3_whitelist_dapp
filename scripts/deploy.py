from brownie import network, config, accounts, Contract, interface, WhitelistDapp
from scripts.helpful_scripts import get_account


def main():
    account = get_account()
    whitelist_dapp = WhitelistDapp.deploy(10, {"from": account}, publish_source=True)
