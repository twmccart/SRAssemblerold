/*
 * Assembler.h
 *
 *  Created on: Oct 15, 2011
 *      Author: hchou
 */

#ifndef ASSEMBLER_H_
#define ASSEMBLER_H_

#include <string>
#include <iostream>
#include "Utility.h"
#include "Library.h"
#include "Logger.h"

class Assembler {
public:
	Assembler(int, string);
	virtual ~Assembler();
	//virtual void do_assembly(int kmer, int min_cov, int insert_size, const string& left_read, const string& right_read,  const string& output_file)=0;
	virtual void do_assembly(int kmer, const vector<Library>& libraries, const string& output_file)=0;
	virtual bool is_available()=0;
	virtual void clean_files(const string& dir)=0;
	virtual string get_output_contig_file_name(string prefix)=0;
	virtual string get_output_scaffold_file_name(string prefix)=0;
	static const int SOAPDENOVO_ASSEMBLER = 0;
	static const int ABYSS_ASSEMBLER = 1;
	static Assembler* getInstance(int, int, string);
protected:
	Logger* logger;
private:
	static Assembler* assembler;
};

#endif /* ASSEMBLER_H_ */
