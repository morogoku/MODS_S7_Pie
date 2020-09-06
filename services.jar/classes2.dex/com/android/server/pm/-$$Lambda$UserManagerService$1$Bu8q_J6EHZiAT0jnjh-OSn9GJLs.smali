.class public final synthetic Lcom/android/server/pm/-$$Lambda$UserManagerService$1$Bu8q_J6EHZiAT0jnjh-OSn9GJLs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/pm/UserManagerService$1;

.field private final synthetic f$1:I

.field private final synthetic f$2:Landroid/content/IntentSender;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/UserManagerService$1;ILandroid/content/IntentSender;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$UserManagerService$1$Bu8q_J6EHZiAT0jnjh-OSn9GJLs;->f$0:Lcom/android/server/pm/UserManagerService$1;

    iput p2, p0, Lcom/android/server/pm/-$$Lambda$UserManagerService$1$Bu8q_J6EHZiAT0jnjh-OSn9GJLs;->f$1:I

    iput-object p3, p0, Lcom/android/server/pm/-$$Lambda$UserManagerService$1$Bu8q_J6EHZiAT0jnjh-OSn9GJLs;->f$2:Landroid/content/IntentSender;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$UserManagerService$1$Bu8q_J6EHZiAT0jnjh-OSn9GJLs;->f$0:Lcom/android/server/pm/UserManagerService$1;

    iget v1, p0, Lcom/android/server/pm/-$$Lambda$UserManagerService$1$Bu8q_J6EHZiAT0jnjh-OSn9GJLs;->f$1:I

    iget-object v2, p0, Lcom/android/server/pm/-$$Lambda$UserManagerService$1$Bu8q_J6EHZiAT0jnjh-OSn9GJLs;->f$2:Landroid/content/IntentSender;

    invoke-static {v0, v1, v2}, Lcom/android/server/pm/UserManagerService$1;->lambda$onReceive$1(Lcom/android/server/pm/UserManagerService$1;ILandroid/content/IntentSender;)V

    return-void
.end method
