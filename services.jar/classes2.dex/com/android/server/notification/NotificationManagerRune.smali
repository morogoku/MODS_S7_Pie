.class public Lcom/android/server/notification/NotificationManagerRune;
.super Ljava/lang/Object;
.source "NotificationManagerRune.java"


# static fields
.field public static final NOTI_SUPPORT_BLOCKING_SUGGESTION:Z = false

.field public static final SUPPORT_AOSP_BUG_FIX:Z = true

.field public static final SUPPORT_AOSP_BUG_FIX_CHANNEL_GROUP_BANNED:Z = true

.field public static final SUPPORT_AOSP_BUG_FIX_CONCURRENT:Z = true

.field public static final SUPPORT_AOSP_BUG_FIX_MESSAGING_STYLE_HEADSUP_CONTENTS_INVISIBLE:Z = true

.field public static final SUPPORT_AOSP_BUG_FIX_PREVENT_NPE:Z = true

.field public static final SUPPORT_AOSP_BUG_FIX_PREVENT_NPE_MESSAGE_TEXT_MESSAGE:Z = true

.field public static final SUPPORT_BUGFIX_RIGHTICON_LEAK:Z = true

.field public static final SUPPORT_BYPASS_PERMISSION_FOR_SYSTEM:Z = true

.field public static final SUPPORT_DO_NOT_BLOCK_SYSTEMUI:Z = true

.field public static final SUPPORT_FOREGROUND_SERVICE_DIALOG:Z = true

.field public static final SUPPORT_KEEP_NLS_ACCESS:Z = true

.field public static final SUPPORT_MARK_SNOOZE_NOTIFICATION:Z = true

.field public static final SUPPORT_MIGRATION_NOTIFICATION_SETTING:Z = true

.field public static final SUPPORT_MULTISTAR_GHOST_FLOATING:Z = true

.field public static final SUPPORT_NLS_DEFAULT_ACCESS:Z = true

.field public static final SUPPORT_NOTIFICATION_EASY_MUTE:Z = true

.field public static final SUPPORT_NOTIFICATION_SMART_ALERT:Z = true

.field public static final SUPPORT_NOTI_LOG:Z = true

.field public static final SUPPORT_NOTI_LOG_DEBUG:Z

.field public static final SUPPORT_NOTI_SOUND_VOLUME:Z = true

.field public static final SUPPORT_PLAY_IN_CALL_NOTIFICATION:Z = true

.field public static final SUPPORT_REBIND_LISTENER:Z = true

.field public static final SUPPORT_SEC_BACKUP_RESTORE:Z = true

.field public static final SUPPORT_SEC_DEFAULT_MANAGEDSERVICE_PACKAGE:Z = true

.field public static final SUPPORT_SEC_DND:Z = true

.field public static final SUPPORT_SEC_LED_NOTIFICATION:Z = true

.field public static final SUPPORT_SEC_NOTI_EFFECT_FLASH:Z = true

.field public static final SUPPORT_SEC_NOTI_ICON_TINTING:Z = true

.field public static final SUPPORT_SEC_NOTI_POLICY_VIBRATION:Z = true


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/NotificationManagerRune;->SUPPORT_NOTI_LOG_DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
