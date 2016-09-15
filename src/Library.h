/*
 * Library.h
 *
 *  Created on: Feb 27, 2012
 *      Author: hchou
 */

#ifndef LIBRARY_H_
#define LIBRARY_H_
#include "Const.h"
#include "Utility.h"
#include "Logger.h"

class Library {

public:
	Library(unsigned int lib_idx, string data_dir, string tmp_dir, Logger* logger);
	virtual ~Library();
	int get_insert_size();
	int get_num_parts();
	int get_reversed();
	int get_format();
	bool get_paired_end();
	string get_left_read();
	string get_right_read();
	void set_insert_size(int insert_size);
	void set_num_parts(int num_parts);
	void set_reversed(int reversed);
	void set_format(int format);
	void set_paired_end(bool paired_end);
	void set_left_read(string left_read);
	void set_right_read(string right_read);
	string get_matched_left_read_name();
	string get_matched_right_read_name();
	string get_matched_left_read_name(int round);
	string get_matched_right_read_name(int round);
	string get_matched_left_read_name(int round, int idx);
	string get_matched_right_read_name(int round, int idx);
	string get_file_extension();
	string get_joined_read_name(int round, int idx, int file_type);
	string get_split_file_name(int idx, int file_type);
	string get_prefix_split_src_file(string src_read);
	void do_split_files(int read_type, int reads_per_file);
private:
	int lib_idx;
	int insert_size;
	int num_parts;
	int reversed;
	int format;
	bool paired_end;
	string data_dir;
	string tmp_dir;
	string left_read;
	string right_read;
	string file_extension;
	Logger* logger;
};

#endif /* LIBRARY_H_ */
