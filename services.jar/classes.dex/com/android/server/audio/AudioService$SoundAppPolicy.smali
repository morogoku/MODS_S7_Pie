.class public Lcom/android/server/audio/AudioService$SoundAppPolicy;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SoundAppPolicy"
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.samsung.android.sm.policy"

.field private static final AUTHORITY_URI:Landroid/net/Uri;

.field private static final CATEGORY_IDX:I = 0x1

.field public static final KARAOKE_WHITE:Ljava/lang/String; = "karaoke_white"

.field public static final MEDIA_BUTTON_BLACK:Ljava/lang/String; = "media_button_black"

.field private static final PACKAGE_IDX:I = 0x0

.field private static final PACKAGE_PROJECTION:[Ljava/lang/String;

.field private static final PACKAGE_TABLE:Ljava/lang/String; = "policy_item/audio"

.field private static final PACKAGE_URI:Landroid/net/Uri;

.field private static final POLICY_VERSION_IDX:I = 0x1

.field private static final VERION_URI:Landroid/net/Uri;

.field private static final VERSION_PROJECTION:[Ljava/lang/String;

.field private static final VERSION_TABLE:Ljava/lang/String; = "policy_list"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "content://com.samsung.android.sm.policy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/AudioService$SoundAppPolicy;->AUTHORITY_URI:Landroid/net/Uri;

    sget-object v0, Lcom/android/server/audio/AudioService$SoundAppPolicy;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "policy_list"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/AudioService$SoundAppPolicy;->VERION_URI:Landroid/net/Uri;

    const-string/jumbo v0, "policyName"

    const-string/jumbo v1, "policyVersion"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/AudioService$SoundAppPolicy;->VERSION_PROJECTION:[Ljava/lang/String;

    sget-object v0, Lcom/android/server/audio/AudioService$SoundAppPolicy;->AUTHORITY_URI:Landroid/net/Uri;

    const-string/jumbo v1, "policy_item/audio"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/AudioService$SoundAppPolicy;->PACKAGE_URI:Landroid/net/Uri;

    const-string/jumbo v0, "item"

    const-string v1, "category"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/audio/AudioService$SoundAppPolicy;->PACKAGE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$19600()Landroid/net/Uri;
    .registers 1

    sget-object v0, Lcom/android/server/audio/AudioService$SoundAppPolicy;->VERION_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$19700()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/audio/AudioService$SoundAppPolicy;->VERSION_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$19800()Landroid/net/Uri;
    .registers 1

    sget-object v0, Lcom/android/server/audio/AudioService$SoundAppPolicy;->PACKAGE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$19900()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/audio/AudioService$SoundAppPolicy;->PACKAGE_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method
