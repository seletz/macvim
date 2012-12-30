/* os_mswin.c */
void mch_exit __ARGS((int r));
void mch_early_init __ARGS((void));
int mch_input_isatty __ARGS((void));
void mch_settitle __ARGS((char_u *title, char_u *icon));
void mch_restore_title __ARGS((int which));
int mch_can_restore_title __ARGS((void));
int mch_can_restore_icon __ARGS((void));
int mch_FullName __ARGS((char_u *fname, char_u *buf, int len, int force));
int mch_isFullName __ARGS((char_u *fname));
void slash_adjust __ARGS((char_u *p));
int vim_stat __ARGS((const char *name, struct stat *stp));
void mch_settmode __ARGS((int tmode));
int mch_get_shellsize __ARGS((void));
void mch_set_shellsize __ARGS((void));
void mch_new_shellsize __ARGS((void));
void mch_suspend __ARGS((void));
void display_errors __ARGS((void));
int mch_has_exp_wildcard __ARGS((char_u *p));
int mch_has_wildcard __ARGS((char_u *p));
int mch_chdir __ARGS((char *path));
int can_end_termcap_mode __ARGS((int give_msg));
int mch_screenmode __ARGS((char_u *arg));
int mch_libcall __ARGS((char_u *libname, char_u *funcname, char_u *argstring, int argint, char_u **string_result, int *number_result));
int utf8_to_utf16 __ARGS((char_u *instr, int inlen, short_u *outstr, int *unconvlenp));
int utf16_to_utf8 __ARGS((short_u *instr, int inlen, char_u *outstr));
void MultiByteToWideChar_alloc __ARGS((UINT cp, DWORD flags, LPCSTR in, int inlen, LPWSTR *out, int *outlen));
void WideCharToMultiByte_alloc __ARGS((UINT cp, DWORD flags, LPCWSTR in, int inlen, LPSTR *out, int *outlen, LPCSTR def, LPBOOL useddef));
int clip_mch_own_selection __ARGS((VimClipboard *cbd));
void clip_mch_lose_selection __ARGS((VimClipboard *cbd));
void clip_mch_request_selection __ARGS((VimClipboard *cbd));
void clip_mch_set_selection __ARGS((VimClipboard *cbd));
short_u *enc_to_utf16 __ARGS((char_u *str, int *lenp));
char_u *utf16_to_enc __ARGS((short_u *str, int *lenp));
void acp_to_enc __ARGS((char_u *str, int str_size, char_u **out, int *outlen));
void DumpPutS __ARGS((const char *psz));
int mch_get_winpos __ARGS((int *x, int *y));
void mch_set_winpos __ARGS((int x, int y));
void mch_print_cleanup __ARGS((void));
int mch_print_init __ARGS((prt_settings_T *psettings, char_u *jobname, int forceit));
int mch_print_begin __ARGS((prt_settings_T *psettings));
void mch_print_end __ARGS((prt_settings_T *psettings));
int mch_print_end_page __ARGS((void));
int mch_print_begin_page __ARGS((char_u *msg));
int mch_print_blank_page __ARGS((void));
void mch_print_start_line __ARGS((int margin, int page_line));
int mch_print_text_out __ARGS((char_u *p, int len));
void mch_print_set_font __ARGS((int iBold, int iItalic, int iUnderline));
void mch_print_set_bg __ARGS((long_u bgcol));
void mch_print_set_fg __ARGS((long_u fgcol));
char_u *mch_resolve_shortcut __ARGS((char_u *fname));
void win32_set_foreground __ARGS((void));
void serverInitMessaging __ARGS((void));
void serverSetName __ARGS((char_u *name));
char_u *serverGetVimNames __ARGS((void));
int serverSendReply __ARGS((char_u *name, char_u *reply));
int serverSendToVim __ARGS((char_u *name, char_u *cmd, char_u **result, void *ptarget, int asExpr, int silent));
void serverForeground __ARGS((char_u *name));
char_u *serverGetReply __ARGS((HWND server, int *expr_res, int remove, int wait));
void serverProcessPendingMessages __ARGS((void));
char *charset_id2name __ARGS((int id));
int get_logfont __ARGS((LOGFONT *lf, char_u *name, HDC printer_dc, int verbose));
/* vim: set ft=c : */
