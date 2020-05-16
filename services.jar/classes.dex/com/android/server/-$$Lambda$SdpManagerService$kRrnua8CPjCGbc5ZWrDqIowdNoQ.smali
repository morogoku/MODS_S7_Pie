.class public final synthetic Lcom/android/server/-$$Lambda$SdpManagerService$kRrnua8CPjCGbc5ZWrDqIowdNoQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:[B

.field private final synthetic f$1:J

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>([BJI)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$SdpManagerService$kRrnua8CPjCGbc5ZWrDqIowdNoQ;->f$0:[B

    iput-wide p2, p0, Lcom/android/server/-$$Lambda$SdpManagerService$kRrnua8CPjCGbc5ZWrDqIowdNoQ;->f$1:J

    iput p4, p0, Lcom/android/server/-$$Lambda$SdpManagerService$kRrnua8CPjCGbc5ZWrDqIowdNoQ;->f$2:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    iget-object v0, p0, Lcom/android/server/-$$Lambda$SdpManagerService$kRrnua8CPjCGbc5ZWrDqIowdNoQ;->f$0:[B

    iget-wide v1, p0, Lcom/android/server/-$$Lambda$SdpManagerService$kRrnua8CPjCGbc5ZWrDqIowdNoQ;->f$1:J

    iget v3, p0, Lcom/android/server/-$$Lambda$SdpManagerService$kRrnua8CPjCGbc5ZWrDqIowdNoQ;->f$2:I

    check-cast p1, Lcom/android/internal/widget/ILockSettings;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/server/SdpManagerService;->lambda$verifyToken$0([BJILcom/android/internal/widget/ILockSettings;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p1

    return-object p1
.end method
