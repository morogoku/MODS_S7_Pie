.class public final synthetic Lcom/android/server/-$$Lambda$SdpManagerService$VirtualLockClient$VBIaUN_ZlkTeFwaXVZpZRWFfX0g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:I

.field private final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$SdpManagerService$VirtualLockClient$VBIaUN_ZlkTeFwaXVZpZRWFfX0g;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/-$$Lambda$SdpManagerService$VirtualLockClient$VBIaUN_ZlkTeFwaXVZpZRWFfX0g;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/-$$Lambda$SdpManagerService$VirtualLockClient$VBIaUN_ZlkTeFwaXVZpZRWFfX0g;->f$2:I

    iput p4, p0, Lcom/android/server/-$$Lambda$SdpManagerService$VirtualLockClient$VBIaUN_ZlkTeFwaXVZpZRWFfX0g;->f$3:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 6

    iget-object v0, p0, Lcom/android/server/-$$Lambda$SdpManagerService$VirtualLockClient$VBIaUN_ZlkTeFwaXVZpZRWFfX0g;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/-$$Lambda$SdpManagerService$VirtualLockClient$VBIaUN_ZlkTeFwaXVZpZRWFfX0g;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/-$$Lambda$SdpManagerService$VirtualLockClient$VBIaUN_ZlkTeFwaXVZpZRWFfX0g;->f$2:I

    iget v3, p0, Lcom/android/server/-$$Lambda$SdpManagerService$VirtualLockClient$VBIaUN_ZlkTeFwaXVZpZRWFfX0g;->f$3:I

    check-cast p1, Lcom/android/internal/widget/ILockSettings;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/server/SdpManagerService$VirtualLockClient;->lambda$setPassword$0(Ljava/lang/String;Ljava/lang/String;IILcom/android/internal/widget/ILockSettings;)V

    return-void
.end method
