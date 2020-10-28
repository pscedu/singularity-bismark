#!/bin/bash

TOOLS=(bismark
bismark_genome_preparation
deduplicate_bismark
bismark_methylation_extractor
bismark2report
bismark2summary)

cat << EOF > template
#!/bin/bash

if [ ! \$(command -v singularity) ]; then
	module load singularity/3.6.3
fi

VERSION=0.22.3
PACKAGE=bismark
TOOL=TOOL_NAME
DIRECTORY=/opt/packages/\$PACKAGE/\$VERSION

singularity exec -B /pylon5 \$DIRECTORY/singularity-\$PACKAGE-\$VERSION.sif \$TOOL "\$@"
EOF

for TOOL in "${TOOLS[@]}"
do
	echo $TOOL
        cp template $TOOL
	sed -i "s/TOOL_NAME/$TOOL/g" $TOOL
	chmod +x $TOOL
done

rm -f template
