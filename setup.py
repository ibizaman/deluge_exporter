from setuptools import setup, find_packages

with open('requirements.txt') as f:
    install_requires = filter(lambda x: not x.startswith('http'), f.read().splitlines())

setup(
    name='deluge-exporter',
    version='2.4.0',
    packages=["deluge_exporter"],
    install_requires=install_requires,
    entry_points={
        'console_scripts': ['deluge-exporter=deluge_exporter.deluge_exporter:main']
    },
    include_package_data=True,
)
