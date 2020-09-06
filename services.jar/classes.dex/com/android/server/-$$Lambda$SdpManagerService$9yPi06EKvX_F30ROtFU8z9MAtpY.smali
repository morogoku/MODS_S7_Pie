.class public final synthetic Lcom/android/server/-$$Lambda$SdpManagerService$9yPi06EKvX_F30ROtFU8z9MAtpY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:J

.field private final synthetic f$1:[B

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(J[BI)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/-$$Lambda$SdpManagerService$9yPi06EKvX_F30ROtFU8z9MAtpY;->f$0:J

    iput-object p3, p0, Lcom/android/server/-$$Lambda$SdpManagerService$9yPi06EKvX_F30ROtFU8z9MAtpY;->f$1:[B

    iput p4, p0, Lcom/android/server/-$$Lambda$SdpManagerService$9yPi06EKvX_F30ROtFU8z9MAtpY;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 6

    iget-wide v0, p0, Lcom/android/server/-$$Lambda$SdpManagerService$9yPi06EKvX_F30ROtFU8z9MAtpY;->f$0:J

    iget-object v2, p0, Lcom/android/server/-$$Lambda$SdpManagerService$9yPi06EKvX_F30ROtFU8z9MAtpY;->f$1:[B

    iget v3, p0, Lcom/android/server/-$$Lambda$SdpManagerService$9yPi06EKvX_F30ROtFU8z9MAtpY;->f$2:I

    check-cast p1, Lcom/android/internal/widget/LockSettingsInternal;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/server/SdpManagerService;->lambda$handleUnlockUser$3(J[BILcom/android/internal/widget/LockSettingsInternal;)V

    return-void
.end method
