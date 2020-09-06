.class public Lcom/android/server/desktopmode/DesktopModeSettings;
.super Ljava/lang/Object;
.source "DesktopModeSettings.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.sec.android.desktopmode.uiservice.SettingsProvider"

.field private static final CALL_METHOD_CLEAR:Ljava/lang/String; = "clearSettings"

.field private static final CALL_METHOD_DELETE:Ljava/lang/String; = "deleteSettings"

.field private static final CALL_METHOD_GET:Ljava/lang/String; = "getSettings"

.field private static final CALL_METHOD_SET:Ljava/lang/String; = "setSettings"

.field private static final CONTENT_URI:Landroid/net/Uri;

.field private static final SETTINGS_GLOBAL_KEYS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final SETTINGS_GLOBAL_KEY_DOCK_USBPD_IDS:Ljava/lang/String; = "dock_usbpd_ids"

.field public static final SETTINGS_GLOBAL_KEY_DOCK_VERSION:Ljava/lang/String; = "dock_version"

.field public static final SETTINGS_HDMI_DEFAULT:I = -0x1

.field public static final SETTINGS_HDMI_DESKTOP_MODE:I = 0x0

.field public static final SETTINGS_HDMI_INITIAL_CONNECTION_DIALOG_SHOWN:Ljava/lang/String; = "hdmi_initial_connection_dialog_shown"

.field public static final SETTINGS_HDMI_MIRRORING_MODE:I = 0x1

.field public static final SETTINGS_KEY_AUDIO_OUTPUT_TO_DISPLAY:Ljava/lang/String; = "audio_output_to_display"

.field public static final SETTINGS_KEY_AUTO_OPEN_LAST_APP:Ljava/lang/String; = "auto_open_last_app"

.field public static final SETTINGS_KEY_BIXBY_ENABLED:Ljava/lang/String; = "bixby_enabled"

.field public static final SETTINGS_KEY_DOCK_FASTCHARGER_WARNING:Ljava/lang/String; = "dock_fastcharger_warning"

.field public static final SETTINGS_KEY_ENABLED:Ljava/lang/String; = "enabled"

.field public static final SETTINGS_KEY_FLOW_POINTER_TO_PHONE_SCREEN:Ljava/lang/String; = "flow_pointer_is_on_dex"

.field public static final SETTINGS_KEY_HDMI:Ljava/lang/String; = "hdmi_mode"

.field public static final SETTINGS_KEY_HDMI_AUTO_ENTER:Ljava/lang/String; = "hdmi_auto_enter"

.field public static final SETTINGS_KEY_HDMI_AUTO_ENTER_BACKUP:Ljava/lang/String; = "hdmi_auto_enter_backup"

.field public static final SETTINGS_KEY_INITIAL_SPEN_DIALOG:Ljava/lang/String; = "initial_spen_dialog"

.field public static final SETTINGS_KEY_KNOX_HDMI_AUTO_ENTER_STATE:Ljava/lang/String; = "knox_hdmi_auto_enter_state"

.field public static final SETTINGS_KEY_LABS_ENABLED:Ljava/lang/String; = "labs_enabled"

.field public static final SETTINGS_KEY_LABS_RESIZABLE_WINDOW_ENABLED:Ljava/lang/String; = "labs_resizable_window_enabled"

.field public static final SETTINGS_KEY_LAUNCH_POLICY_DEVELOPER_ENABLED:Ljava/lang/String; = "launch_policy_developer_enabled"

.field public static final SETTINGS_KEY_LAUNCH_POLICY_MODE:Ljava/lang/String; = "launch_policy_mode"

.field public static final SETTINGS_KEY_MIRRORING_SWITCH_DISABLED:Ljava/lang/String; = "mirroring_switch_disabled"

.field public static final SETTINGS_KEY_MONITOR_CHANGED:Ljava/lang/String; = "monitor_changed"

.field public static final SETTINGS_KEY_MONITOR_INFO:Ljava/lang/String; = "monitor_info"

.field public static final SETTINGS_KEY_POGO_AUTO_ENTER:Ljava/lang/String; = "pogo_auto_enter"

.field public static final SETTINGS_KEY_POINTER_FLOW_DIRECTION:Ljava/lang/String; = "flow_pointer_from_where_dex"

.field public static final SETTINGS_KEY_RESOLUTION_MAX_SUPPORT:Ljava/lang/String; = "resolution_max"

.field public static final SETTINGS_KEY_RESOLUTION_USER_SETTING:Ljava/lang/String; = "resolution_user_setting"

.field public static final SETTINGS_KEY_SCREENSAVER_BACKUP:Ljava/lang/String; = "screensaver_backup"

.field public static final SETTINGS_KEY_SCREEN_OFF_TIMEOUT:Ljava/lang/String; = "timeout_dex"

.field public static final SETTINGS_KEY_SCREEN_OFF_TIMEOUT_BACKUP:Ljava/lang/String; = "timeout_backup"

.field public static final SETTINGS_KEY_SKIP_WELCOME_SCREEN:Ljava/lang/String; = "skip_welcome_screen"

.field public static final SETTINGS_KEY_SPEED_LIMIT_BACKUP:Ljava/lang/String; = "speed_limit_backup"

.field public static final SETTINGS_KEY_SPEN_ENABLED:Ljava/lang/String; = "spen_enabled"

.field public static final SETTINGS_KEY_SPEN_MODE:Ljava/lang/String; = "spen_mode"

.field public static final SETTINGS_KEY_SPEN_MODE_ICON:Ljava/lang/String; = "spen_mode_icon"

.field public static final SETTINGS_KEY_TOUCHPAD_ALWAYS_ON_ENABLED:Ljava/lang/String; = "touchpad_always_on_enabled"

.field public static final SETTINGS_KEY_TOUCHPAD_ENABLED:Ljava/lang/String; = "touchpad_enabled"

.field public static final SETTINGS_KEY_TOUCH_KEYBOARD:Ljava/lang/String; = "touch_keyboard"

.field public static final SETTINGS_KEY_TOUCH_KEYBOARD_BACKUP:Ljava/lang/String; = "touch_keyboard_backup"

.field public static final SETTINGS_KEY_USE_GENUINE_ACCESSORIES_NOTIFICATION_DELETED:Ljava/lang/String; = "use_genuine_accessories_notification_deleted"

.field public static final SETTINGS_KEY_VIRTUAL_KEYBOARD:Ljava/lang/String; = "keyboard_dex"

.field public static final SETTINGS_KEY_VIRTUAL_KEYBOARD_BACKUP:Ljava/lang/String; = "keyboard_backup"

.field public static final SETTINGS_POGO_INITIAL_CONNECTION_DIALOG_SHOWN:Ljava/lang/String; = "pogo_initial_connection_dialog_shown"

.field public static final SETTINGS_SPEN_INPUT_MODE_MOUSE:Ljava/lang/String; = "mouse"

.field public static final SETTINGS_SPEN_INPUT_MODE_PEN:Ljava/lang/String; = "pen"

.field public static final SYSPROP_KEY_FONT_ENABLED:Ljava/lang/String; = "dex_enabled_font"

.field public static final SYSPROP_PERSIST_PREFIX:Ljava/lang/String; = "persist.service.dex."

.field public static final SYSPROP_PREFIX:Ljava/lang/String; = "service.dex."

.field private static final TAG:Ljava/lang/String;

.field private static sCurrentUserId:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DMS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/DesktopModeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/DesktopModeSettings;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/desktopmode/DesktopModeSettings;->SETTINGS_GLOBAL_KEYS:Ljava/util/Set;

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeSettings;->SETTINGS_GLOBAL_KEYS:Ljava/util/Set;

    const-string/jumbo v1, "dock_usbpd_ids"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeSettings;->SETTINGS_GLOBAL_KEYS:Ljava/util/Set;

    const-string/jumbo v1, "dock_version"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "content://com.sec.android.desktopmode.uiservice.SettingsProvider/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/DesktopModeSettings;->CONTENT_URI:Landroid/net/Uri;

    const/16 v0, -0x2710

    sput v0, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static applyGlobalSettings(Landroid/content/ContentResolver;I)V
    .registers 6

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeSettings;->SETTINGS_GLOBAL_KEYS:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1d

    invoke-static {p0, v1, v2, p1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_1d
    goto :goto_6

    :cond_1e
    return-void
.end method

.method public static clearSettingsAsUser(Landroid/content/ContentResolver;I)V
    .registers 5

    :try_start_0
    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getUriAsUser(I)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "clearSettings"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_13

    :catch_b
    move-exception v0

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeSettings;->TAG:Ljava/lang/String;

    const-string v2, "Failed to clear Dex settings"

    invoke-static {v1, v2, v0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_13
    return-void
.end method

.method public static deleteAllSettings(Landroid/content/ContentResolver;)V
    .registers 2

    sget v0, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    invoke-static {p0, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->deleteAllSettingsAsUser(Landroid/content/ContentResolver;I)V

    return-void
.end method

.method public static deleteAllSettingsAsUser(Landroid/content/ContentResolver;I)V
    .registers 5

    :try_start_0
    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getUriAsUser(I)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v1, "deleteSettings"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_14

    :catch_c
    move-exception v0

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeSettings;->TAG:Ljava/lang/String;

    const-string v2, "Failed to delete settings"

    invoke-static {v1, v2, v0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_14
    return-void
.end method

.method public static deleteSettings(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 3

    sget v0, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    invoke-static {p0, p1, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->deleteSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    return-void
.end method

.method public static deleteSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;I)V
    .registers 7

    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string/jumbo v1, "key"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_c
    invoke-static {p2}, Lcom/android/server/desktopmode/DesktopModeSettings;->getUriAsUser(I)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "deleteSettings"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_17} :catch_18

    goto :goto_20

    :catch_18
    move-exception v1

    sget-object v2, Lcom/android/server/desktopmode/DesktopModeSettings;->TAG:Ljava/lang/String;

    const-string v3, "Failed to delete settings"

    invoke-static {v2, v3, v1}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_20
    return-void
.end method

.method static dump(Lcom/android/internal/util/IndentingPrintWriter;Landroid/content/ContentResolver;I)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/DesktopModeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current user ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") settings"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/android/server/desktopmode/DesktopModeSettings;->getAllSettingsAsUser(Landroid/content/ContentResolver;I)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/desktopmode/Utils;->bundleToString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    if-eqz p2, :cond_59

    const-string v0, "System user (0) settings"

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getAllSettingsAsUser(Landroid/content/ContentResolver;I)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/desktopmode/Utils;->bundleToString(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    :cond_59
    const-string/jumbo v0, "service.dex.dex_enabled_font"

    const-string/jumbo v1, "service.dex.dex_enabled_font"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method public static getAllSettings(Landroid/content/ContentResolver;)Landroid/os/Bundle;
    .registers 2

    sget v0, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    invoke-static {p0, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->getAllSettingsAsUser(Landroid/content/ContentResolver;I)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static getAllSettingsAsUser(Landroid/content/ContentResolver;I)Landroid/os/Bundle;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getUriAsUser(I)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "getSettings"

    invoke-virtual {p0, v1, v2, v0, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_c} :catch_d

    return-object v1

    :catch_d
    move-exception v1

    sget-object v2, Lcom/android/server/desktopmode/DesktopModeSettings;->TAG:Ljava/lang/String;

    const-string v3, "Failed to get settings"

    invoke-static {v2, v3, v1}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method public static getSettings(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .registers 4

    sget v0, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static getSettings(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .registers 6

    sget v0, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    sget v0, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .registers 4

    sget v0, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z

    move-result v0

    return v0
.end method

.method public static getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    .registers 5

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J
    .registers 7

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p4}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 7

    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUserOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    :catch_5
    move-exception v0

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeSettings;->TAG:Ljava/lang/String;

    const-string v2, "Failed to get settings"

    invoke-static {v1, v2, v0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p2
.end method

.method public static getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)Z
    .registers 5

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getSettingsAsUserOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 8

    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string/jumbo v1, "key"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "def"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Lcom/android/server/desktopmode/DesktopModeSettings;->getUriAsUser(I)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "getSettings"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_24
    return-object p2
.end method

.method public static getSettingsOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .registers 5

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    invoke-static {p0, p1, v0, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUserOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getSettingsOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .registers 6

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    invoke-static {p0, p1, v0, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUserOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getSettingsOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    sget v0, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUserOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSettingsOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .registers 5

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    invoke-static {p0, p1, v0, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettingsAsUserOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static getUri()Landroid/net/Uri;
    .registers 1

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeSettings;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method

.method private static getUriAsUser(I)Landroid/net/Uri;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "com.sec.android.desktopmode.uiservice.SettingsProvider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/settings"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .registers 2

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeSettings;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static isGlobalKey(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Lcom/android/server/desktopmode/DesktopModeSettings;->SETTINGS_GLOBAL_KEYS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static setCurrentUserId(I)V
    .registers 1

    sput p0, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    return-void
.end method

.method public static setSettings(Landroid/content/ContentResolver;Ljava/lang/String;I)V
    .registers 5

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    invoke-static {p0, p1, v0, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static setSettings(Landroid/content/ContentResolver;Ljava/lang/String;J)V
    .registers 6

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    invoke-static {p0, p1, v0, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    sget v0, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .registers 5

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    invoke-static {p0, p1, v0, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;II)V
    .registers 5

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)V
    .registers 6

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p4}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUserOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_c

    :catch_4
    move-exception v0

    sget-object v1, Lcom/android/server/desktopmode/DesktopModeSettings;->TAG:Ljava/lang/String;

    const-string v2, "Failed to set settings"

    invoke-static {v1, v2, v0}, Lcom/android/server/desktopmode/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c
    return-void
.end method

.method public static setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;ZI)V
    .registers 5

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static setSettingsAsUserOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8

    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string/jumbo v1, "key"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "val"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Lcom/android/server/desktopmode/DesktopModeSettings;->getUriAsUser(I)Landroid/net/Uri;

    move-result-object v1

    const-string/jumbo v2, "setSettings"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public static setSettingsOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;I)V
    .registers 5

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    invoke-static {p0, p1, v0, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUserOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static setSettingsOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;J)V
    .registers 6

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    invoke-static {p0, p1, v0, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUserOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static setSettingsOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    sget v0, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUserOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static setSettingsOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .registers 5

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/android/server/desktopmode/DesktopModeSettings;->sCurrentUserId:I

    invoke-static {p0, p1, v0, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettingsAsUserOrThrowException(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static setSystemProperties(Ljava/lang/String;Z)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "service.dex."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
