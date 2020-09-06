.class public final synthetic Lcom/android/server/-$$Lambda$SdpManagerService$VirtualLockClient$VKDw1XAjifXgpv8ZyMBW1SmkKw0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;

.field private final synthetic f$1:J

.field private final synthetic f$2:[B

.field private final synthetic f$3:I

.field private final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;J[BII)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$SdpManagerService$VirtualLockClient$VKDw1XAjifXgpv8ZyMBW1SmkKw0;->f$0:Ljava/lang/String;

    iput-wide p2, p0, Lcom/android/server/-$$Lambda$SdpManagerService$VirtualLockClient$VKDw1XAjifXgpv8ZyMBW1SmkKw0;->f$1:J

    iput-object p4, p0, Lcom/android/server/-$$Lambda$SdpManagerService$VirtualLockClient$VKDw1XAjifXgpv8ZyMBW1SmkKw0;->f$2:[B

    iput p5, p0, Lcom/android/server/-$$Lambda$SdpManagerService$VirtualLockClient$VKDw1XAjifXgpv8ZyMBW1SmkKw0;->f$3:I

    iput p6, p0, Lcom/android/server/-$$Lambda$SdpManagerService$VirtualLockClient$VKDw1XAjifXgpv8ZyMBW1SmkKw0;->f$4:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    iget-object v0, p0, Lcom/android/server/-$$Lambda$SdpManagerService$VirtualLockClient$VKDw1XAjifXgpv8ZyMBW1SmkKw0;->f$0:Ljava/lang/String;

    iget-wide v1, p0, Lcom/android/server/-$$Lambda$SdpManagerService$VirtualLockClient$VKDw1XAjifXgpv8ZyMBW1SmkKw0;->f$1:J

    iget-object v3, p0, Lcom/android/server/-$$Lambda$SdpManagerService$VirtualLockClient$VKDw1XAjifXgpv8ZyMBW1SmkKw0;->f$2:[B

    iget v4, p0, Lcom/android/server/-$$Lambda$SdpManagerService$VirtualLockClient$VKDw1XAjifXgpv8ZyMBW1SmkKw0;->f$3:I

    iget v5, p0, Lcom/android/server/-$$Lambda$SdpManagerService$VirtualLockClient$VKDw1XAjifXgpv8ZyMBW1SmkKw0;->f$4:I

    move-object v6, p1

    check-cast v6, Lcom/android/internal/widget/LockSettingsInternal;

    invoke-static/range {v0 .. v6}, Lcom/android/server/SdpManagerService$VirtualLockClient;->lambda$setPasswordWithToken$2(Ljava/lang/String;J[BIILcom/android/internal/widget/LockSettingsInternal;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
