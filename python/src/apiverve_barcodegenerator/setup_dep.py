from setuptools import setup, find_packages

setup(
    name='apiverve_barcodegenerator',
    version='1.2.2',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Barcode Generator creates downloadable barcode images from text or product codes in Code 128 or Code 39 formats. Each response provides a temporary image download link, file format, and expiration timestamp.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/barcodegenerator?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
