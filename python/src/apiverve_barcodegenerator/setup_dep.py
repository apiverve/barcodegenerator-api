from setuptools import setup, find_packages

setup(
    name='apiverve_barcodegenerator',
    version='1.2.5',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Barcode Generator creates downloadable barcode images from text or product codes in Code 128, Code 39, EAN-13, EAN-8, UPC-A, UPC-E, ITF-14, Codabar, MSI and other linear formats, with bar width, height and margin adjustable on paid plans. Each response provides a temporary image download link, the image size in pixels, file format, and expiration timestamp.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/barcodegenerator?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
