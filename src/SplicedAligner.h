/*
 * SplicedAligner.h
 *
 *  Created on: Oct 15, 2011
 *      Author: hchou
 */

#ifndef SPLICEDALIGNER_H_
#define SPLICEDALIGNER_H_

#include <string>
#include "Utility.h"
#include "Const.h"
#include "Logger.h"

using namespace std;

class SplicedAligner {
public:
	SplicedAligner(int, string);
	virtual ~SplicedAligner();
	virtual void do_spliced_alignment(const string& genomic_file, const string& type, const string& query_file, const string& species, const Params& params, const string& output_file, const string& hit_contig_file)=0;
	virtual string_map get_aligned_contigs(const double& min_score, const double& min_coverage, const int& min_contig_lgth, const string& all_contig_file, const string& hit_contig_file, const string& alignment_file)=0;
	virtual string get_program_name()=0;
	virtual bool is_available()=0;
	virtual void clean_files(const string&)=0;
	string_map get_aligned_query_list();
	string get_output_summary();
	int get_match_num();
	static const int GENOME_THREADER = 0;
	static const int GENE_SEQER = 1;
	static const int EXONERATE = 2;
	static SplicedAligner* getInstance(int, int, string);
	void set_log_file(std::string log_file);
protected:
	Logger* logger;
	int num_matches;
	string output_string;
	string_map aligned_query_list;
private:
	static SplicedAligner* spliced_aligner;
};

#endif /* SPLICEDALIGNER_H_ */
