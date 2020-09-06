.class public final synthetic Lcom/android/server/-$$Lambda$SdpManagerService$mAXlHoQxsTTxOHmi9jXYHm4edz4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;

.field private final synthetic f$1:I

.field private final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$SdpManagerService$mAXlHoQxsTTxOHmi9jXYHm4edz4;->f$0:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/-$$Lambda$SdpManagerService$mAXlHoQxsTTxOHmi9jXYHm4edz4;->f$1:I

    iput p3, p0, Lcom/android/server/-$$Lambda$SdpManagerService$mAXlHoQxsTTxOHmi9jXYHm4edz4;->f$2:I

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/android/server/-$$Lambda$SdpManagerService$mAXlHoQxsTTxOHmi9jXYHm4edz4;->f$0:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/-$$Lambda$SdpManagerService$mAXlHoQxsTTxOHmi9jXYHm4edz4;->f$1:I

    iget v2, p0, Lcom/android/server/-$$Lambda$SdpManagerService$mAXlHoQxsTTxOHmi9jXYHm4edz4;->f$2:I

    check-cast p1, Lcom/android/internal/widget/ILockSettings;

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/SdpManagerService;->lambda$checkCredential$2(Ljava/lang/String;IILcom/android/internal/widget/ILockSettings;)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p1

    return-object p1
.end method
