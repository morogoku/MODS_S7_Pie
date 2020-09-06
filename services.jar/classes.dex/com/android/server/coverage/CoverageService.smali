.class public Lcom/android/server/coverage/CoverageService;
.super Landroid/os/Binder;
.source "CoverageService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/coverage/CoverageService$CoverageCommand;
    }
.end annotation


# static fields
.field public static final COVERAGE_SERVICE:Ljava/lang/String; = "coverage"

.field public static final ENABLED:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x1

    :try_start_1
    const-string/jumbo v1, "org.jacoco.agent.rt.RT"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_7} :catch_8

    goto :goto_a

    :catch_8
    move-exception v1

    const/4 v0, 0x0

    :goto_a
    sput-boolean v0, Lcom/android/server/coverage/CoverageService;->ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    new-instance v0, Lcom/android/server/coverage/CoverageService$CoverageCommand;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/coverage/CoverageService$CoverageCommand;-><init>(Lcom/android/server/coverage/CoverageService$1;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/coverage/CoverageService$CoverageCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method
