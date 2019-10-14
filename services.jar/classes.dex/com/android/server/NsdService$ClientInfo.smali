.class Lcom/android/server/NsdService$ClientInfo;
.super Ljava/lang/Object;
.source "NsdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NsdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientInfo"
.end annotation


# static fields
.field private static final MAX_LIMIT:I = 0xa


# instance fields
.field private final mChannel:Lcom/android/internal/util/AsyncChannel;

.field private final mClientIds:Landroid/util/SparseIntArray;

.field private final mClientRequests:Landroid/util/SparseIntArray;

.field private final mMessenger:Landroid/os/Messenger;

.field private mResolvedService:Landroid/net/nsd/NsdServiceInfo;

.field final synthetic this$0:Lcom/android/server/NsdService;


# direct methods
.method private constructor <init>(Lcom/android/server/NsdService;Lcom/android/internal/util/AsyncChannel;Landroid/os/Messenger;)V
    .registers 6

    iput-object p1, p0, Lcom/android/server/NsdService$ClientInfo;->this$0:Lcom/android/server/NsdService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseIntArray;

    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/NsdService$ClientInfo;->mClientRequests:Landroid/util/SparseIntArray;

    iput-object p2, p0, Lcom/android/server/NsdService$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    iput-object p3, p0, Lcom/android/server/NsdService$ClientInfo;->mMessenger:Landroid/os/Messenger;

    const-string p1, "NsdService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "New client, channel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " messenger: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/NsdService;Lcom/android/internal/util/AsyncChannel;Landroid/os/Messenger;Lcom/android/server/NsdService$1;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/NsdService$ClientInfo;-><init>(Lcom/android/server/NsdService;Lcom/android/internal/util/AsyncChannel;Landroid/os/Messenger;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseIntArray;
    .registers 2

    iget-object v0, p0, Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/NsdService$ClientInfo;)Landroid/util/SparseIntArray;
    .registers 2

    iget-object v0, p0, Lcom/android/server/NsdService$ClientInfo;->mClientRequests:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/NsdService$ClientInfo;)Landroid/net/nsd/NsdServiceInfo;
    .registers 2

    iget-object v0, p0, Lcom/android/server/NsdService$ClientInfo;->mResolvedService:Landroid/net/nsd/NsdServiceInfo;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/server/NsdService$ClientInfo;Landroid/net/nsd/NsdServiceInfo;)Landroid/net/nsd/NsdServiceInfo;
    .registers 2

    iput-object p1, p0, Lcom/android/server/NsdService$ClientInfo;->mResolvedService:Landroid/net/nsd/NsdServiceInfo;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/server/NsdService$ClientInfo;I)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/NsdService$ClientInfo;->getClientId(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/NsdService$ClientInfo;)Lcom/android/internal/util/AsyncChannel;
    .registers 2

    iget-object v0, p0, Lcom/android/server/NsdService$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/NsdService$ClientInfo;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/NsdService$ClientInfo;->expungeAllRequests()V

    return-void
.end method

.method private expungeAllRequests()V
    .registers 7

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_75

    iget-object v1, p0, Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/NsdService$ClientInfo;->this$0:Lcom/android/server/NsdService;

    # getter for: Lcom/android/server/NsdService;->mIdToClientInfoMap:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/android/server/NsdService;->access$1300(Lcom/android/server/NsdService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V

    const-string v3, "NsdService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Terminating client-ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " global-ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/NsdService$ClientInfo;->mClientRequests:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/NsdService$ClientInfo;->mClientRequests:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    const v4, 0x60001

    if-eq v3, v4, :cond_6c

    const v4, 0x60009

    if-eq v3, v4, :cond_66

    const v4, 0x60012

    if-eq v3, v4, :cond_60

    goto :goto_72

    :cond_60
    iget-object v3, p0, Lcom/android/server/NsdService$ClientInfo;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->stopResolveService(I)Z
    invoke-static {v3, v2}, Lcom/android/server/NsdService;->access$2700(Lcom/android/server/NsdService;I)Z

    goto :goto_72

    :cond_66
    iget-object v3, p0, Lcom/android/server/NsdService$ClientInfo;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->unregisterService(I)Z
    invoke-static {v3, v2}, Lcom/android/server/NsdService;->access$2100(Lcom/android/server/NsdService;I)Z

    goto :goto_72

    :cond_6c
    iget-object v3, p0, Lcom/android/server/NsdService$ClientInfo;->this$0:Lcom/android/server/NsdService;

    # invokes: Lcom/android/server/NsdService;->stopServiceDiscovery(I)Z
    invoke-static {v3, v2}, Lcom/android/server/NsdService;->access$1800(Lcom/android/server/NsdService;I)Z

    nop

    :goto_72
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_75
    iget-object v1, p0, Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    iget-object v1, p0, Lcom/android/server/NsdService$ClientInfo;->mClientRequests:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method private getClientId(I)I
    .registers 4

    iget-object v0, p0, Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v0

    if-gez v0, :cond_9

    return v0

    :cond_9
    iget-object v1, p0, Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    return v1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "mChannel "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/server/NsdService$ClientInfo;->mChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "mMessenger "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/server/NsdService$ClientInfo;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "mResolvedService "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/server/NsdService$ClientInfo;->mResolvedService:Landroid/net/nsd/NsdServiceInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    :goto_36
    iget-object v2, p0, Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_70

    iget-object v2, p0, Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    const-string v3, "clientId "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, " mDnsId "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/android/server/NsdService$ClientInfo;->mClientIds:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, " type "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/android/server/NsdService$ClientInfo;->mClientRequests:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    :cond_70
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
