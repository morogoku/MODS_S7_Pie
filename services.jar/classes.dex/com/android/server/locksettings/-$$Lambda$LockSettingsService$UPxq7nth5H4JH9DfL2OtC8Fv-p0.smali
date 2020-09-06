.class public final synthetic Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$UPxq7nth5H4JH9DfL2OtC8Fv-p0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$UPxq7nth5H4JH9DfL2OtC8Fv-p0;->f$0:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$UPxq7nth5H4JH9DfL2OtC8Fv-p0;->f$1:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$UPxq7nth5H4JH9DfL2OtC8Fv-p0;->f$0:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/locksettings/-$$Lambda$LockSettingsService$UPxq7nth5H4JH9DfL2OtC8Fv-p0;->f$1:I

    check-cast p1, Lcom/android/server/SdpManagerService;

    invoke-static {v0, v1, p1}, Lcom/android/server/locksettings/LockSettingsService;->lambda$doSelfRecovery$13(Ljava/lang/String;ILcom/android/server/SdpManagerService;)[B

    move-result-object p1

    return-object p1
.end method
