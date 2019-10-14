.class public Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;
.super Landroid/os/ShellCommand;
.source "ShellCommandImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShellCmdImpl"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 3

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    iput-object p1, p0, Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;->setEnabled(Z)V

    return-void
.end method

.method private executeCommand(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;->getArgList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_27

    new-instance v2, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;

    iget-object v3, p0, Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/android/server/sepunion/friends/shell/-$$Lambda$ShellCommandImpl$IND_tjEzBVxDC6gO7FIbBfoomis;

    invoke-direct {v3, v1}, Lcom/android/server/sepunion/friends/shell/-$$Lambda$ShellCommandImpl$IND_tjEzBVxDC6gO7FIbBfoomis;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;->perform(Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    if-eqz v2, :cond_27

    invoke-direct {p0, v2}, Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;->getReplyMsg(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;->printMsg(Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_27
    return v0
.end method

.method private getArgList(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_e

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    invoke-virtual {p0}, Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;->getNextArg()Ljava/lang/String;

    move-result-object v1

    :goto_12
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_20

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;->getNextArg()Ljava/lang/String;

    move-result-object v1

    goto :goto_12

    :cond_20
    return-object v0
.end method

.method private getReplyMsg(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 5

    const-string v0, "ShellCmdImpl"

    const-string v1, "getReplyMsg"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const-string/jumbo v0, "paramStr0"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$executeCommand$0(Ljava/util/List;Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;)Z
    .registers 3

    invoke-virtual {p1, p0}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->command(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method private printMsg(Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    if-eqz v0, :cond_1b

    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1b

    :cond_18
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1b
    :goto_1b
    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;->mEnabled:Z

    return v0
.end method

.method public onCommand(Ljava/lang/String;)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;->executeCommand(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    const/4 v0, -0x1

    :goto_9
    return v0
.end method

.method public onHelp()V
    .registers 2

    const-string v0, "help"

    invoke-direct {p0, v0}, Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;->executeCommand(Ljava/lang/String;)Z

    return-void
.end method

.method public setEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/sepunion/friends/shell/ShellCommandImpl;->mEnabled:Z

    return-void
.end method
