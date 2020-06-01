# 1 "main.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 311 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "main.c" 2
# 1 "/Users/javierca/Documents/Develop/emsdk/upstream/emscripten/system/include/emscripten.h" 1 3
# 1 "/Users/javierca/Documents/Develop/emsdk/upstream/emscripten/system/include/emscripten/emscripten.h" 1 3
# 23 "/Users/javierca/Documents/Develop/emsdk/upstream/emscripten/system/include/emscripten/emscripten.h" 3
# 1 "/Users/javierca/Documents/Develop/emsdk/upstream/emscripten/system/include/emscripten/em_asm.h" 1 3
# 155 "/Users/javierca/Documents/Develop/emsdk/upstream/emscripten/system/include/emscripten/em_asm.h" 3
__attribute__((nothrow))
int emscripten_asm_const_int(const char* code, const char* arg_sigs, ...);
__attribute__((nothrow))
double emscripten_asm_const_double(const char* code, const char* arg_sigs, ...);

__attribute__((nothrow))
int emscripten_asm_const_int_sync_on_main_thread(
  const char* code, const char* arg_sigs, ...);
__attribute__((nothrow))
double emscripten_asm_const_double_sync_on_main_thread(
  const char* code, const char* arg_sigs, ...);

__attribute__((nothrow))
void emscripten_asm_const_async_on_main_thread(
  const char* code, const char* arg_sigs, ...);
# 24 "/Users/javierca/Documents/Develop/emsdk/upstream/emscripten/system/include/emscripten/emscripten.h" 2 3
# 1 "/Users/javierca/Documents/Develop/emsdk/upstream/emscripten/system/include/emscripten/em_macros.h" 1 3
# 25 "/Users/javierca/Documents/Develop/emsdk/upstream/emscripten/system/include/emscripten/emscripten.h" 2 3
# 1 "/Users/javierca/Documents/Develop/emsdk/upstream/emscripten/system/include/emscripten/em_js.h" 1 3
# 26 "/Users/javierca/Documents/Develop/emsdk/upstream/emscripten/system/include/emscripten/emscripten.h" 2 3
# 42 "/Users/javierca/Documents/Develop/emsdk/upstream/emscripten/system/include/emscripten/emscripten.h" 3
typedef short __attribute__((aligned(1))) emscripten_align1_short;

typedef long long __attribute__((aligned(4))) emscripten_align4_int64;
typedef long long __attribute__((aligned(2))) emscripten_align2_int64;
typedef long long __attribute__((aligned(1))) emscripten_align1_int64;

typedef int __attribute__((aligned(2))) emscripten_align2_int;
typedef int __attribute__((aligned(1))) emscripten_align1_int;

typedef float __attribute__((aligned(2))) emscripten_align2_float;
typedef float __attribute__((aligned(1))) emscripten_align1_float;

typedef double __attribute__((aligned(4))) emscripten_align4_double;
typedef double __attribute__((aligned(2))) emscripten_align2_double;
typedef double __attribute__((aligned(1))) emscripten_align1_double;

typedef void (*em_callback_func)(void);
typedef void (*em_arg_callback_func)(void*);
typedef void (*em_str_callback_func)(const char *);

extern void emscripten_run_script(const char *script);
extern int emscripten_run_script_int(const char *script);
extern char *emscripten_run_script_string(const char *script);
extern void emscripten_async_run_script(const char *script, int millis);
extern void emscripten_async_load_script(const char *script, em_callback_func onload, em_callback_func onerror);


extern void emscripten_set_main_loop(em_callback_func func, int fps, int simulate_infinite_loop);





extern int emscripten_set_main_loop_timing(int mode, int value);
extern void emscripten_get_main_loop_timing(int *mode, int *value);
extern void emscripten_set_main_loop_arg(em_arg_callback_func func, void *arg, int fps, int simulate_infinite_loop);
extern void emscripten_pause_main_loop(void);
extern void emscripten_resume_main_loop(void);
extern void emscripten_cancel_main_loop(void);







typedef void (*em_socket_callback)(int fd, void *userData);
typedef void (*em_socket_error_callback)(int fd, int err, const char* msg, void *userData);

extern void emscripten_set_socket_error_callback(void *userData, em_socket_error_callback callback);
extern void emscripten_set_socket_open_callback(void *userData, em_socket_callback callback);
extern void emscripten_set_socket_listen_callback(void *userData, em_socket_callback callback);
extern void emscripten_set_socket_connection_callback(void *userData, em_socket_callback callback);
extern void emscripten_set_socket_message_callback(void *userData, em_socket_callback callback);
extern void emscripten_set_socket_close_callback(void *userData, em_socket_callback callback);



extern void _emscripten_push_main_loop_blocker(em_arg_callback_func func, void *arg, const char *name);
extern void _emscripten_push_uncounted_main_loop_blocker(em_arg_callback_func func, void *arg, const char *name);
# 116 "/Users/javierca/Documents/Develop/emsdk/upstream/emscripten/system/include/emscripten/emscripten.h" 3
extern void emscripten_set_main_loop_expected_blockers(int num);






extern void emscripten_async_call(em_arg_callback_func func, void *arg, int millis);
# 132 "/Users/javierca/Documents/Develop/emsdk/upstream/emscripten/system/include/emscripten/emscripten.h" 3
extern void emscripten_exit_with_live_runtime(void);
extern void emscripten_force_exit(int status);

double emscripten_get_device_pixel_ratio(void);

void emscripten_hide_mouse(void);
void emscripten_set_canvas_size(int width, int height) __attribute__((deprecated("This variant does not allow specifying the target canvas", "Use emscripten_set_canvas_element_size() instead")));
void emscripten_get_canvas_size(int *width, int *height, int *isFullscreen) __attribute__((deprecated("This variant does not allow specifying the target canvas", "Use emscripten_get_canvas_element_size() and emscripten_get_fullscreen_status() instead")));


double emscripten_get_now(void);







float emscripten_random(void);



void emscripten_async_wget(const char* url, const char* file, em_str_callback_func onload, em_str_callback_func onerror);

typedef void (*em_async_wget_onload_func)(void*, void*, int);
void emscripten_async_wget_data(const char* url, void *arg, em_async_wget_onload_func onload, em_arg_callback_func onerror);

typedef void (*em_async_wget2_onload_func)(unsigned, void*, const char*);
typedef void (*em_async_wget2_onstatus_func)(unsigned, void*, int);

int emscripten_async_wget2(const char* url, const char* file, const char* requesttype, const char* param, void *arg, em_async_wget2_onload_func onload, em_async_wget2_onstatus_func onerror, em_async_wget2_onstatus_func onprogress);

typedef void (*em_async_wget2_data_onload_func)(unsigned, void*, void*, unsigned);
typedef void (*em_async_wget2_data_onerror_func)(unsigned, void*, int, const char*);
typedef void (*em_async_wget2_data_onprogress_func)(unsigned, void*, int, int);

int emscripten_async_wget2_data(const char* url, const char* requesttype, const char* param, void *arg, int free, em_async_wget2_data_onload_func onload, em_async_wget2_data_onerror_func onerror, em_async_wget2_data_onprogress_func onprogress);

void emscripten_async_wget2_abort(int handle);



void emscripten_wget(const char* url, const char* file);
void emscripten_wget_data(const char* url, void** pbuffer, int* pnum, int *perror);



void emscripten_idb_async_load(const char *db_name, const char *file_id, void* arg, em_async_wget_onload_func onload, em_arg_callback_func onerror);
void emscripten_idb_async_store(const char *db_name, const char *file_id, void* ptr, int num, void* arg, em_arg_callback_func onstore, em_arg_callback_func onerror);
void emscripten_idb_async_delete(const char *db_name, const char *file_id, void* arg, em_arg_callback_func ondelete, em_arg_callback_func onerror);
typedef void (*em_idb_exists_func)(void*, int);
void emscripten_idb_async_exists(const char *db_name, const char *file_id, void* arg, em_idb_exists_func oncheck, em_arg_callback_func onerror);



void emscripten_idb_load(const char *db_name, const char *file_id, void** pbuffer, int* pnum, int *perror);
void emscripten_idb_store(const char *db_name, const char *file_id, void* buffer, int num, int *perror);
void emscripten_idb_delete(const char *db_name, const char *file_id, int *perror);
void emscripten_idb_exists(const char *db_name, const char *file_id, int* pexists, int *perror);

void emscripten_idb_load_blob(const char *db_name, const char *file_id, int* pblob, int *perror);
void emscripten_idb_store_blob(const char *db_name, const char *file_id, void* buffer, int num, int *perror);
void emscripten_idb_read_from_blob(int blob, int start, int num, void* buffer);
void emscripten_idb_free_blob(int blob);



int emscripten_run_preload_plugins(const char* file, em_str_callback_func onload, em_str_callback_func onerror);

typedef void (*em_run_preload_plugins_data_onload_func)(void*, const char*);
void emscripten_run_preload_plugins_data(char* data, int size, const char *suffix, void *arg, em_run_preload_plugins_data_onload_func onload, em_arg_callback_func onerror);

void emscripten_lazy_load_code(void);







typedef int worker_handle;

worker_handle emscripten_create_worker(const char *url);
void emscripten_destroy_worker(worker_handle worker);

typedef void (*em_worker_callback_func)(char*, int, void*);
void emscripten_call_worker(worker_handle worker, const char *funcname, char *data, int size, em_worker_callback_func callback, void *arg);
void emscripten_worker_respond(char *data, int size);
void emscripten_worker_respond_provisionally(char *data, int size);

int emscripten_get_worker_queue_size(worker_handle worker);



int emscripten_get_compiler_setting(const char *name);
int emscripten_has_asyncify(void);

void emscripten_debugger(void);


struct _IO_FILE;
typedef struct _IO_FILE FILE;

char *emscripten_get_preloaded_image_data(const char *path, int *w, int *h);
char *emscripten_get_preloaded_image_data_from_FILE(FILE *file, int *w, int *h);
# 249 "/Users/javierca/Documents/Develop/emsdk/upstream/emscripten/system/include/emscripten/emscripten.h" 3
void emscripten_log(int flags, const char* format, ...);

int emscripten_get_callstack(int flags, char *out, int maxbytes);

int emscripten_print_double(double x, char *to, signed max);

typedef void (*em_scan_func)(void*, void*);
void emscripten_scan_registers(em_scan_func func);
void emscripten_scan_stack(em_scan_func func);




typedef void * emscripten_coroutine;
emscripten_coroutine emscripten_coroutine_create(em_arg_callback_func func, void *arg, int stack_size);
int emscripten_coroutine_next(emscripten_coroutine);
void emscripten_yield(void);






void emscripten_sleep(unsigned int ms);
void emscripten_sleep_with_yield(unsigned int ms);
# 2 "/Users/javierca/Documents/Develop/emsdk/upstream/emscripten/system/include/emscripten.h" 2 3
# 2 "main.c" 2
# 1 "./equihash.h" 1






typedef struct {
 unsigned char version[4];
 unsigned char prevhash[32];
 unsigned char merkleroot[32];
 unsigned char reserved[32];
 unsigned char time[4];
 unsigned char bits[4];
 unsigned char nonce[32];
 unsigned char solsize[3];
 unsigned char solution[1344];
} block_t;

typedef char equihash_dummy_t[1 / (sizeof (block_t) == 1487)];

void step0 (block_t *block);
void step (int step);
int solution (void);
# 3 "main.c" 2
# 1 "./util.h" 1



typedef unsigned char uint8_t;
typedef unsigned short uint16_t;
typedef unsigned int uint32_t;
typedef unsigned long long uint64_t;

typedef char util_dummy_t1[1 / (sizeof (uint8_t ) == 1)];
typedef char util_dummy_t2[1 / (sizeof (uint16_t) == 2)];
typedef char util_dummy_t4[1 / (sizeof (uint32_t) == 4)];
typedef char util_dummy_t8[1 / (sizeof (uint64_t) == 8)];

void *memset (void *ptr, int val, unsigned int len);
void *memcpy (void *dst, const void *src, unsigned int len);
int memcmp (const void *a, const void *b, unsigned int len);

void exit (int code);
int puts (const char *str);
# 4 "main.c" 2
# 1 "./sha256.h" 1
# 15 "./sha256.h"
typedef struct {
 unsigned int tot_len;
 unsigned int len;
 uint8_t block[2 * (512 / 8)];
 uint32_t h[8];
} sha256_ctx;

void sha256_init (sha256_ctx *ctx);
void sha256_update (sha256_ctx *ctx, const uint8_t *message,
      unsigned int len);
void sha256_final (sha256_ctx *ctx, uint8_t *digest);
void sha256 (const uint8_t *message, unsigned int len,
      uint8_t *digest);
# 5 "main.c" 2



static block_t block;
static uint8_t target[(256 / 8)] = { 0 };

static int
hex2int (char ch) {
 return '0' <= ch && ch <= '9' ? ch - '0' :
  'A' <= ch && ch <= 'F' ? ch - 'A' + 10 :
  'a' <= ch && ch <= 'f' ? ch - 'a' + 10 : -1;
}

static char
int2hex (uint8_t i) { return "0123456789abcdef"[i]; }

static void
from_hex (uint8_t *bin, char *hex, int len) {
 int i;

 for (i = 0; i < len; i++)
  bin[i] = hex2int (hex[i * 2]) * 16 + hex2int (hex[i * 2 + 1]);
 if (hex[i * 2])
  ((void)("bad len of hex string"));
}

static void
to_hex (char *hex, uint8_t *bin, int len) {
 int i;

 for (i = 0; i < len; i++) {
  hex[i * 2 ] = int2hex (bin[i] / 16);
  hex[i * 2 + 1] = int2hex (bin[i] % 16);
 }
 hex[i * 2] = 0;
}

__attribute__((used))
void
mine (char *block_hex, char *target_hex) {
 int i;

 from_hex ((void *)&block, block_hex, 140);
 from_hex ((void *)target, target_hex, sizeof (target));

 step0 (&block);
 for (i = 1; i <= 9; i++) {
  ((void)("step"));
  step (i);
 }
}

static int
above_target (void) {
 int i;
 uint8_t diff[(256 / 8)];

 sha256 ((uint8_t *)&block, sizeof (block), diff);
 sha256 (diff, (256 / 8), diff);

 for (i = 0; i < (256 / 8); i++) {
  if (diff[(256 / 8) - 1 - i] < target[i])
   return 0;
  if (diff[(256 / 8) - 1 - i] > target[i])
   return 1;
 }
 return -1;
}

int
solution (void) {
 char buf[sizeof (block)*2 + 2];

 if (above_target ()) {
  ((void)emscripten_asm_const_int("above ();" , ((char[]){ '\0' })));
  ((void)("above"));
  return 0;
 }
 ((void)("solution"));
 to_hex (buf, (void *)&block, sizeof (block));
 emscripten_asm_const_int("{ submit (Pointer_stringify ($0)); }" , ((char[]){ _Generic((buf), float: 'f', double: 'd', int: 'i', unsigned: 'i', default: 'i'), '\0' }),buf);
 return 1;
}
