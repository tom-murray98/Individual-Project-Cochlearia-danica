# Individual-Project-Cochlearia-danica
 The genomics of speciation and rapid range expansion in Cochlearia danica
 
 Current progress includes:

**Step 1:  Subgenome coverage assessment of Cochlearia species against a synthetic C. danica genome**
 <br />
  1.) Created a concatenated pseudo-C. danica hybrid genome composed of C. excelsa (n = 6) and C. groenlandica (n = 7).  
  2.) Constructed C. danica genome was mapped against multiple individuals of different Cochlearia populations using NGS pipe.  
  3.) The alignment outputs of these mappings were assessed for coverage using bedtools intersect, samtools coverage and flagstat (Using scripts samtools_coverage.sh and samtools_flagstat.sh). Bedtools_intersect.sh was used to create non-repeat region (masked) BAMs.

 

**Step 2: Draft assembly of HiFi reads**
1.) Generated assemblies for C. danica using the program Hifiasm (and script hifiasm.sh)
