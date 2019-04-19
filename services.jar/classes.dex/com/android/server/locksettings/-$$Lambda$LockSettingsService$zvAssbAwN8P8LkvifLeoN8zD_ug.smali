.class public final synthetic Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$zvAssbAwN8P8LkvifLeoN8zD_ug;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;

.field private final synthetic f$1:I

.field private final synthetic f$2:I

.field private final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;III)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$zvAssbAwN8P8LkvifLeoN8zD_ug;->f$0:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$zvAssbAwN8P8LkvifLeoN8zD_ug;->f$1:I

    iput p3, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$zvAssbAwN8P8LkvifLeoN8zD_ug;->f$2:I

    iput p4, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$zvAssbAwN8P8LkvifLeoN8zD_ug;->f$3:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$zvAssbAwN8P8LkvifLeoN8zD_ug;->f$0:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$zvAssbAwN8P8LkvifLeoN8zD_ug;->f$1:I

    iget v2, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$zvAssbAwN8P8LkvifLeoN8zD_ug;->f$2:I

    iget v3, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$zvAssbAwN8P8LkvifLeoN8zD_ug;->f$3:I

    check-cast p1, Lcom/android/server/SdpManagerService;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/server/locksettings/LockSettingsService;->lambda$doSyntheticPasswordFullMigrationAsync$20(Ljava/lang/String;IIILcom/android/server/SdpManagerService;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p1

    return-object p1
.end method
