.class public final synthetic Lcom/android/server/locksettings/-$$Lambda$SyntheticPasswordManager$G2lweFjyOzs7HsFWYGnjMGpjNSU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/os/DropBoxManager;

.field private final synthetic f$1:Ljava/lang/StringBuilder;


# direct methods
.method public synthetic constructor <init>(Landroid/os/DropBoxManager;Ljava/lang/StringBuilder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/locksettings/-$$Lambda$SyntheticPasswordManager$G2lweFjyOzs7HsFWYGnjMGpjNSU;->f$0:Landroid/os/DropBoxManager;

    iput-object p2, p0, Lcom/android/server/locksettings/-$$Lambda$SyntheticPasswordManager$G2lweFjyOzs7HsFWYGnjMGpjNSU;->f$1:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/locksettings/-$$Lambda$SyntheticPasswordManager$G2lweFjyOzs7HsFWYGnjMGpjNSU;->f$0:Landroid/os/DropBoxManager;

    iget-object v1, p0, Lcom/android/server/locksettings/-$$Lambda$SyntheticPasswordManager$G2lweFjyOzs7HsFWYGnjMGpjNSU;->f$1:Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lcom/android/server/locksettings/SyntheticPasswordManager;->lambda$writeDropboxLog$5(Landroid/os/DropBoxManager;Ljava/lang/StringBuilder;)V

    return-void
.end method
