.class Lcom/android/server/EngineeringModeService$EMSConnectionTask;
.super Landroid/os/AsyncTask;
.source "EngineeringModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/EngineeringModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EMSConnectionTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field public static final SERVER_URI2:Ljava/lang/String; = "https://kwb.secmobilesvc.com:7788/requestEmrToken.kwb"


# instance fields
.field public final SERVER_URI:Ljava/lang/String;

.field private mEmRequest:[B

.field private mResponseBody:[B

.field final synthetic this$0:Lcom/android/server/EngineeringModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/EngineeringModeService;[B)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/EngineeringModeService$EMSConnectionTask;->this$0:Lcom/android/server/EngineeringModeService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const-string/jumbo p1, "http://kwb.secmobilesvc.com/requestEmrToken.kwb"

    iput-object p1, p0, Lcom/android/server/EngineeringModeService$EMSConnectionTask;->SERVER_URI:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/EngineeringModeService$EMSConnectionTask;->mEmRequest:[B

    return-void
.end method

.method private post([B)[B
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lcom/android/server/EngineeringModeService$MultipartUtility;

    iget-object v2, p0, Lcom/android/server/EngineeringModeService$EMSConnectionTask;->this$0:Lcom/android/server/EngineeringModeService;

    const-string/jumbo v3, "https://kwb.secmobilesvc.com:7788/requestEmrToken.kwb"

    invoke-direct {v1, v2, v3, v0}, Lcom/android/server/EngineeringModeService$MultipartUtility;-><init>(Lcom/android/server/EngineeringModeService;Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "tokenreq"

    invoke-virtual {v1, v2, p1}, Lcom/android/server/EngineeringModeService$MultipartUtility;->addByteArrayPart(Ljava/lang/String;[B)V

    invoke-virtual {v1}, Lcom/android/server/EngineeringModeService$MultipartUtility;->finish()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [B

    const/4 v4, 0x0

    :goto_1c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_31

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Byte;

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    aput-byte v5, v3, v4
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_2e} :catch_32

    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    :cond_31
    return-object v3

    :catch_32
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/EngineeringModeService$EMSConnectionTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .registers 5

    iget-object v0, p0, Lcom/android/server/EngineeringModeService$EMSConnectionTask;->mEmRequest:[B

    invoke-direct {p0, v0}, Lcom/android/server/EngineeringModeService$EMSConnectionTask;->post([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/EngineeringModeService$EMSConnectionTask;->mResponseBody:[B

    iget-object v0, p0, Lcom/android/server/EngineeringModeService$EMSConnectionTask;->mResponseBody:[B

    if-eqz v0, :cond_26

    const-string v0, "EngineeringModeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "response length="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/EngineeringModeService$EMSConnectionTask;->mResponseBody:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResponseBody()[B
    .registers 2

    iget-object v0, p0, Lcom/android/server/EngineeringModeService$EMSConnectionTask;->mResponseBody:[B

    return-object v0
.end method
