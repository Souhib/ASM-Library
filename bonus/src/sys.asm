BITS 64

SECTION .text
GLOBAL my_write

my_read:

    mov RAX, 0x00
    syscall
    ret

my_write:

    mov RAX, 0x01
    syscall
    ret

open:

    mov RAX, 0x02
    syscall
    ret

close:

    mov RAX, 0x03
    syscall
    ret

newstat:

    mov RAX, 0x04
    syscall
    ret

newfstat:

    mov RAX, 0x05
    syscall
    ret

newlstat:

    mov RAX, 0x06
    syscall
    ret

poll:

    mov RAX, 0x07
    syscall
    ret

lseek:

    mov RAX, 0x08
    syscall
    ret

mmap:

    mov RAX, 0x09
    syscall
    ret

mprotect:

    mov RAX, 0x0a
    syscall
    ret

munmap:

    mov RAX, 0x0b
    syscall
    ret

brk:

    mov RAX, 0x0c
    syscall
    ret

rt_sigaction:

    mov RAX, 0x0d
    syscall
    ret

rt_sigprocmask:

    mov RAX, 0x0e
    syscall
    ret

ioctl:

    mov RAX, 0x0f
    syscall
    ret

pread64:

    mov RAX, 0x10
    syscall
    ret

pwrite64:

    mov RAX, 0x11
    syscall
    ret

readv:

    mov RAX, 0x12
    syscall
    ret

writev:

    mov RAX, 0x13
    syscall
    ret

access:

    mov RAX, 0x14
    syscall
    ret

pipe:

    mov RAX, 0x15
    syscall
    ret

select:

    mov RAX, 0x16
    syscall
    ret

sched_yield:

    mov RAX, 0x17
    syscall
    ret

mremap:

    mov RAX, 0x18
    syscall
    ret

msync:

    mov RAX, 0x19
    syscall
    ret

mincore:

    mov RAX, 0x1a
    syscall
    ret

madvise:

    mov RAX, 0x1b
    syscall
    ret

shmget:

    mov RAX, 0x1c
     syscall
     ret

shmat:

    mov RAX, 0x1d
     syscall
     ret

shmctl:

    mov RAX, 0x1e
    syscall
    ret

dup:

    mov RAX, 0x1f
    syscall
    ret

dup2:

    mov RAX, 0x20
    syscall
    ret

pause:

    mov RAX, 0x21
    syscall
    ret

nanosleep:

    mov RAX, 0x22
    syscall
    ret

getitimer:

    mov RAX, 0x23
    syscall
    ret

alarm:

    mov RAX, 0x24
    syscall
    ret

setitimer:

    mov RAX, 0x25
    syscall
    ret

getpid:

    mov RAX, 0x26
    syscall
    ret

sendfile64:

    mov RAX, 0x27
    syscall
    ret

socket:

    mov RAX, 0x28
    syscall
    ret

connect:

    mov RAX, 0x29
    syscall
    ret

accept:

    mov RAX, 0x2a
    syscall
    ret

sendto:

    mov RAX, 0x2b
    syscall
    ret

recvfrom:

    mov RAX, 0x2c
    syscall
    ret

sendmsg:

    mov RAX, 0x2d
    syscall
    ret

recvmsg:

    mov RAX, 0x2e
    syscall
    ret

shutdown:

    mov RAX, 0x2f
    syscall
    ret

bind:

    mov RAX, 0x30
    syscall
    ret

listen:

    mov RAX, 0x31
    syscall
    ret

getsockname:

    mov RAX, 0x32
    syscall
    ret

getpeername:

    mov RAX, 0x33
    syscall
    ret

socketpair:

    mov RAX, 0x34
    syscall
    ret

setsockopt:

    mov RAX, 0x35
    syscall
    ret

getsockopt:

    mov RAX, 0x36
    syscall
    ret

exit:

    mov RAX, 0x37
    syscall
    ret

wait4:

    mov RAX, 0x38
    syscall
    ret

kill:

    mov RAX, 0x39
    syscall
    ret

newuname:

    mov RAX, 0x3a
    syscall
    ret

semget:

    mov RAX, 0x3b
    syscall
    ret

semop:

    mov RAX, 0x3c
    syscall
    ret

semctl:

    mov RAX, 0x3d
    syscall
    ret

shmdt:

    mov RAX, 0x3e
    syscall
    ret

msgget:

    mov RAX, 0x3f
    syscall
    ret

msgsnd:

    mov RAX, 0x40
    syscall
    ret

msgrcv:

    mov RAX, 0x41
    syscall
    ret

msgctl:

    mov RAX, 0x42
    syscall
    ret

fcntl:

    mov RAX, 0x43
    syscall
    ret

flock:

    mov RAX, 0x44
    syscall
    ret

fsync:

    mov RAX, 0x45
    syscall
    ret

fdatasync:

    mov RAX, 0x46
    syscall
    ret

truncate:

    mov RAX, 0x47
    syscall
    ret

ftruncate:

    mov RAX, 0x48
    syscall
    ret

getdents:

    mov RAX, 0x49
    syscall
    ret

getcwd:

    mov RAX, 0x4a
    syscall
    ret

chdir:

    mov RAX, 0x4b
    syscall
    ret

fchdir:

    mov RAX, 0x4c
    syscall
    ret

rename:

    mov RAX, 0x4d
    syscall
    ret

mkdir:

    mov RAX, 0x4e
    syscall
    ret

rmdir:

    mov RAX, 0x4f
    syscall
    ret

creat:

    mov RAX, 0x50
    syscall
    ret

link:

    mov RAX, 0x51
    syscall
    ret

unlink:

    mov RAX, 0x52
    syscall
    ret

symlink:

    mov RAX, 0x53
    syscall
    ret

readlink:

    mov RAX, 0x54
    syscall
    ret

chmod:

    mov RAX, 0x55
    syscall
    ret

fchmod:

    mov RAX, 0x56
    syscall
    ret

chown:

    mov RAX, 0x57
    syscall
    ret

fchown:

    mov RAX, 0x58
    syscall
    ret

lchown:

    mov RAX, 0x59
    syscall
    ret

umask:

    mov RAX, 0x5a
    syscall
    ret

gettimeofday:

    mov RAX, 0x5b
    syscall
    ret

getrlimit:

    mov RAX, 0x5c
    syscall
    ret

getrusage:

    mov RAX, 0x5d
    syscall
    ret

sysinfo:

    mov RAX, 0x5e
    syscall
    ret

_times:

    mov RAX, 0x5f
    syscall
    ret

ptrace:

    mov RAX, 0x60
    syscall
    ret

getuid:

    mov RAX, 0x61
    syscall
    ret

syslog:

    mov RAX, 0x62
    syscall
    ret

getgid:

    mov RAX, 0x63
    syscall
    ret

setuid:

    mov RAX, 0x64
    syscall
    ret

setgid:

    mov RAX, 0x65
    syscall
    ret

geteuid:

    mov RAX, 0x66
    syscall
    ret

getegid:

    mov RAX, 0x67
    syscall
    ret

setpgid:

    mov RAX, 0x68
    syscall
    ret

getppid:

    mov RAX, 0x69
    syscall
    ret

getpgrp:

    mov RAX, 0x6a
    syscall
    ret

setsid:

    mov RAX, 0x6b
    syscall
    ret

setreuid:

    mov RAX, 0x6c
    syscall
    ret

setregid:

    mov RAX, 0x6d
    syscall
    ret

getgroups:

    mov RAX, 0x6e
    syscall
    ret

setgroups:

    mov RAX, 0x6f
    syscall
    ret

setresuid:

    mov RAX, 0x11
    syscall
    ret

getresuid:

    mov RAX, 0x70
    syscall
    ret

setresgid:

    mov RAX, 0x71
    syscall
    ret

getresgid:

    mov RAX, 0x72
    syscall
    ret

getpgid:

    mov RAX, 0x73
    syscall
    ret

setfsuid:

    mov RAX, 0x74
    syscall
    ret

setfsgid:

    mov RAX, 0x75
    syscall
    ret

getsid:

    mov RAX, 0x76
    syscall
    ret

capget:

    mov RAX, 0x77
    syscall
    ret

capset:

    mov RAX, 0x78
    syscall
    ret

rt_sigpending:

    mov RAX, 0x79
    syscall
    ret

rt_sigtimedwait:

    mov RAX, 0x7a
    syscall
    ret

rt_sigqueueinfo:

    mov RAX, 0x7b
    syscall
    ret

rt_sigsuspend:

    mov RAX, 0x7c
    syscall
    ret

sigaltstack:

    mov RAX, 0x7d
    syscall
    ret

utime:

    mov RAX, 0x7e
    syscall
    ret

mknod:

    mov RAX, 0x7f
    syscall
    ret

personality:

    mov RAX, 0x80
    syscall
    ret

ustat:

    mov RAX, 0x81
    syscall
    ret

statfs:

    mov RAX, 0x82
    syscall
    ret

fstatfs:

    mov RAX, 0x83
    syscall
    ret

sysfs:

    mov RAX, 0x84
    syscall
    ret

getpriority:

    mov RAX, 0x85
    syscall
    ret

setpriority:

    mov RAX, 0x86
    syscall
    ret

sched_setparam:

    mov RAX, 0x87
    syscall
    ret

sched_getparam:

    mov RAX, 0x88
    syscall
    ret

sched_setscheduler:

    mov RAX, 0x89
    syscall
    ret

sched_getscheduler:

    mov RAX, 0x8a
    syscall
    ret

sched_get_priority_max:

    mov RAX, 0x8b
    syscall
    ret

sched_get_priority_min:

    mov RAX, 0x8c
    syscall
    ret

sched_rr_get_interval:

    mov RAX, 0x8d
    syscall
    ret

mlock:

    mov RAX, 0x8e
    syscall
    ret

munlock:

    mov RAX, 0x8f
    syscall
    ret

mlockall:

    mov RAX, 0x90
    syscall
    ret

munlockall:

    mov RAX, 0x91
    syscall
    ret

vhangup:

    mov RAX, 0x92
    syscall
    ret

modify_ldt:

    mov RAX, 0x93
    syscall
    ret

pivot_root:

    mov RAX, 0x94
    syscall
    ret

sysctl:

    mov RAX, 0x95
    syscall
    ret

prctl:

    mov RAX, 0x96
    syscall
    ret

arch_prctl:

    mov RAX, 0x97
    syscall
    ret

adjtimex:

    mov RAX, 0x98
    syscall
    ret

setrlimit:

    mov RAX, 0x99
    syscall
    ret

chroot:

    mov RAX, 0x9a
    syscall
    ret

sync:

    mov RAX, 0x9b
    syscall
    ret

acct:

    mov RAX, 0x9c
    syscall
    ret

settimeofday:

    mov RAX, 0x9d
    syscall
    ret

mount:

    mov RAX, 0x9e
    syscall
    ret

umount:

    mov RAX, 0x9f
    syscall
    ret

swapon:

    mov RAX, 0xa0
    syscall
    ret

swapoff:

    mov RAX, 0xa1
    syscall
    ret

reboot:

    mov RAX, 0xa2
    syscall
    ret

sethostname:

    mov RAX, 0xa3
    syscall
    ret

setdomainname:

    mov RAX, 0xa4
    syscall
    ret

ioperm:

    mov RAX, 0xa5
    syscall
    ret

init_module:

    mov RAX, 0xa6
    syscall
    ret

delete_module:

    mov RAX, 0xa7
    syscall
    ret

quotactl:

    mov RAX, 0xa8
    syscall
    ret

gettid:

    mov RAX, 0xa9
    syscall
    ret

readahead:

    mov RAX, 0xaa
    syscall
    ret

setxattr:

    mov RAX, 0xab
    syscall
    ret

lsetxattr:

    mov RAX, 0xac
    syscall
    ret

fsetxattr:

    mov RAX, 0xad
    syscall
    ret

getxattr:

    mov RAX, 0xae
    syscall
    ret

lgetxattr:

    mov RAX, 0xaf
    syscall
    ret

fgetxattr:

    mov RAX, 0xb0
    syscall
    ret

listxattr:

    mov RAX, 0xb1
    syscall
    ret

llistxattr:

    mov RAX, 0xb2
    syscall
    ret

flistxattr:

    mov RAX, 0xb3
    syscall
    ret

removexattr:

    mov RAX, 0xb4
    syscall
    ret

lremovexattr:

    mov RAX, 0xb5
    syscall
    ret

fremovexattr:

    mov RAX, 0xb6
    syscall
    ret

tkill:

    mov RAX, 0xb7
    syscall
    ret

time:

    mov RAX, 0xb8
    syscall
    ret

futex:

    mov RAX, 0xb9
    syscall
    ret

sched_setaffinity:

    mov RAX, 0xba
    syscall
    ret

sched_getaffinity:

    mov RAX, 0xbb
    syscall
    ret

io_setup:

    mov RAX, 0xbc
    syscall
    ret

io_destroy:

    mov RAX, 0xbd
    syscall
    ret

io_getevents:

    mov RAX, 0xbe
    syscall
    ret

io_submit:

    mov RAX, 0xbf
    syscall
    ret

io_cancel:

    mov RAX, 0xc0
    syscall
    ret

lookup_dcookie:

    mov RAX, 0xc1
    syscall
    ret

epoll_create:

    mov RAX, 0xc2
    syscall
    ret

remap_file_pages:

    mov RAX, 0xc3
    syscall
    ret

getdents64:

    mov RAX, 0xc4
    syscall
    ret

set_tid_address:

    mov RAX, 0xc5
    syscall
    ret

restart_syscall:

    mov RAX, 0xc6
    syscall
    ret

semtimedop:

    mov RAX, 0xc7
    syscall
    ret

fadvise64:

    mov RAX, 0xc8
    syscall
    ret

timer_create:

    mov RAX, 0xc9
    syscall
    ret

timer_settime:

    mov RAX, 0xca
    syscall
    ret

timer_gettime:

    mov RAX, 0xcb
    syscall
    ret

timer_getoverrun:

    mov RAX, 0xcc
    syscall
    ret

timer_delete:

    mov RAX, 0xcd
    syscall
    ret

clock_settime:

    mov RAX, 0xce
    syscall
    ret

clock_gettime:

    mov RAX, 0xcf
    syscall
    ret

clock_getres:

    mov RAX, 0xd0
    syscall
    ret

clock_nanosleep:

    mov RAX, 0xd1
    syscall
    ret

exit_group:

    mov RAX, 0xd2
    syscall
    ret

epoll_wait:

    mov RAX, 0xd3
    syscall
    ret

epoll_ctl:

    mov RAX, 0xd4
    syscall
    ret

tgkill:

    mov RAX, 0xd5
    syscall
    ret

utimes:

    mov RAX, 0xd6
    syscall
    ret

mbind:

    mov RAX, 0xd7
    syscall
    ret

set_mempolicy:

    mov RAX, 0xd8
    syscall
    ret

get_mempolicy:

    mov RAX, 0xd9
    syscall
    ret

mq_open:

    mov RAX, 0xda
    syscall
    ret

mq_unlink:

    mov RAX, 0xdb
    syscall
    ret

mq_timedsend:

    mov RAX, 0xdc
    syscall
    ret

mq_timedreceive:

    mov RAX, 0xdd
    syscall
    ret

mq_notify:

    mov RAX, 0xde
    syscall
    ret

mq_getsetattr:

    mov RAX, 0xdf
    syscall
    ret

kexec_load:

    mov RAX, 0xe0
    syscall
    ret

waitid:

    mov RAX, 0xe1
    syscall
    ret

add_key:

    mov RAX, 0xe2
    syscall
    ret

request_key:

    mov RAX, 0xe3
    syscall
    ret

keyctl:

    mov RAX, 0xe4
    syscall
    ret

ioprio_set:

    mov RAX, 0xe5
    syscall
    ret

ioprio_get:

    mov RAX, 0xe6
    syscall
    ret

inotify_init:

    mov RAX, 0xe7
    syscall
    ret

inotify_add_watch:

    mov RAX, 0xe8
    syscall
    ret

inotify_rm_watch:

    mov RAX, 0xe9
    syscall
    ret

migrate_pages:

    mov RAX, 0xea
    syscall
    ret

openat:

    mov RAX, 0xeb
    syscall
    ret

mkdirat:

    mov RAX, 0xec
    syscall
    ret

mknodat:

    mov RAX, 0xed
    syscall
    ret

fchownat:

    mov RAX, 0xee
    syscall
    ret

futimesat:

    mov RAX, 0xef
    syscall
    ret

newfstatat:

    mov RAX, 0xf0
    syscall
    ret

unlinkat:

    mov RAX, 0xf1
    syscall
    ret

renameat:

    mov RAX, 0xf2
    syscall
    ret

linkat:

    mov RAX, 0xf3
    syscall
    ret

symlinkat:

    mov RAX, 0xf4
    syscall
    ret

readlinkat:

    mov RAX, 0xf5
    syscall
    ret

fchmodat:

    mov RAX, 0xf6
    syscall
    ret

faccessat:

    mov RAX, 0xf7
    syscall
    ret

pselect6:

    mov RAX, 0xf8
    syscall
    ret

ppoll:

    mov RAX, 0xf9
    syscall
    ret

unshare:

    mov RAX, 0xfa
    syscall
    ret

set_robust_list:

    mov RAX, 0xfb
    syscall
    ret

get_robust_list:

    mov RAX, 0xfc
    syscall
    ret

splice:

    mov RAX, 0xfd
    syscall
    ret

tee:

    mov RAX, 0xfe
    syscall
    ret

sync_file_range:

    mov RAX, 0xff
    syscall
    ret

vmsplice:

    mov RAX, 0x100
    syscall
    ret

move_pages:

    mov RAX, 0x101
    syscall
    ret

utimensat:

    mov RAX, 0x102
    syscall
    ret

epoll_pwait:

    mov RAX, 0x103
    syscall
    ret

signalfd:

    mov RAX, 0x104
    syscall
    ret

timerfd_create:

    mov RAX, 0x105
    syscall
    ret

eventfd:

    mov RAX, 0x106
    syscall
    ret

fallocate:

    mov RAX, 0x107
    syscall
    ret

timerfd_settime:

    mov RAX, 0x108
    syscall
    ret

timerfd_gettime:

    mov RAX, 0x109
    syscall
    ret

accept4:

    mov RAX, 0x10a
    syscall
    ret

signalfd4:

    mov RAX, 0x10b
    syscall
    ret

eventfd2:

    mov RAX, 0x10c
    syscall
    ret

epoll_create1:

    mov RAX, 0x10d
    syscall
    ret

dup3:

    mov RAX, 0x10e
    syscall
    ret

pipe2:

    mov RAX, 0x10f
    syscall
    ret

inotify_init1:

    mov RAX, 0x110
    syscall
    ret

preadv:

    mov RAX, 0x111
    syscall
    ret

pwritev:

    mov RAX, 0x112
    syscall
    ret

rt_tgsigqueueinfo:

    mov RAX, 0x113
    syscall
    ret

perf_event_open:

    mov RAX, 0x114
    syscall
    ret

recvmmsg:

    mov RAX, 0x115
    syscall
    ret

fanotify_init:

    mov RAX, 0x116
    syscall
    ret

fanotify_mark:

    mov RAX, 0x117
    syscall
    ret

prlimit64:

    mov RAX, 0x118
    syscall
    ret

name_to_handle_at:

    mov RAX, 0x119
    syscall
    ret

open_by_handle_at:

    mov RAX, 0x11a
    syscall
    ret

clock_adjtime:

    mov RAX, 0x11b
    syscall
    ret

syncfs:

    mov RAX, 0x11c
    syscall
    ret

sendmmsg:

    mov RAX, 0x11d
    syscall
    ret

setns:

    mov RAX, 0x11e
    syscall
    ret

getcpu:

    mov RAX, 0x11f
    syscall
    ret

process_vm_readv:

    mov RAX, 0x120
    syscall
    ret

process_vm_writev:

    mov RAX, 0x121
    syscall
    ret

kcmp:

    mov RAX, 0x122
    syscall
    ret

finit_module:

    mov RAX, 0x123
    syscall
    ret

sched_setattr:

    mov RAX, 0x124
    syscall
    ret

sched_getattr:

    mov RAX, 0x125
    syscall
    ret

renameat2:

    mov RAX, 0x126
    syscall
    ret

seccomp:

    mov RAX, 0x127
    syscall
    ret

getrandom:

    mov RAX, 0x128
    syscall
    ret

memfd_create:

    mov RAX, 0x129
    syscall
    ret

kexec_file_load:

    mov RAX, 0x12a
    syscall
    ret

bpf:

    mov RAX, 0x12b
    syscall
    ret

userfaultfd:

    mov RAX, 0x12c
    syscall
    ret

membarrier:

    mov RAX, 0x12d
    syscall
    ret

mlock2:

    mov RAX, 0x12e
    syscall
    ret

copy_file_range:

    mov RAX, 0x12f
    syscall
    ret

preadv2:

    mov RAX, 0x130
    syscall
    ret

pwritev2:

    mov RAX, 0x131
    syscall
    ret

pkey_mprotect:

    mov RAX, 0x132
    syscall
    ret

pkey_alloc:

    mov RAX, 0x133
    syscall
    ret

pkey_free:

    mov RAX, 0x134
    syscall
    ret