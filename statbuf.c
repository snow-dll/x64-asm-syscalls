#include <stdio.h>
#include <fcntl.h>
#include <sys/stat.h>
#include <stddef.h>

int main (int argc, char* argv[]) 
{
  struct stat statbuf;
  char* path = "tmpfile098432098432";
  int fd = open (path, O_CREAT, S_IRUSR | S_IRGRP);

  if (fd == -1)
  {
    printf("open() failed: %s\n", argv[1]);
    return 1;
  }

  if (fstat(fd, &statbuf) == -1)
  {
    printf("fstat() failed: %s\n", argv[1]);
    return 1;
  }

  remove(path);

  printf("\nstatbuf offsets:\n\n");
  printf("st_dev: %ld\n", offsetof(struct stat, st_dev));
  printf("st_info: %ld\n", offsetof(struct stat, st_dev));
  printf("st_mode: %ld\n", offsetof(struct stat, st_mode));
  printf("st_nlink: %ld\n", offsetof(struct stat, st_nlink));
  printf("st_uid: %ld\n", offsetof(struct stat, st_nlink));
  printf("st_gid: %ld\n", offsetof(struct stat, st_gid));
  printf("st_rdev: %ld\n", offsetof(struct stat, st_rdev));
  printf("st_size: %ld\n", offsetof(struct stat, st_size));
  printf("st_blksize: %ld\n", offsetof(struct stat, st_blksize));
  printf("st_blocks: %ld\n", offsetof(struct stat, st_blocks));
  printf("st_atime: %ld\n", offsetof(struct stat, st_atime));
  printf("st_mtime: %ld\n", offsetof(struct stat, st_mtime));
  printf("st_ctime: %ld\n", offsetof(struct stat, st_ctime));
}
