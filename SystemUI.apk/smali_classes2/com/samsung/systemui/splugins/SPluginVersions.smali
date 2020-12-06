.class public Lcom/samsung/systemui/splugins/SPluginVersions;
.super Ljava/lang/Object;
.source "SPluginVersions.java"


# static fields
.field public static final MODULE_BIXBY2:Ljava/lang/String; = "bixby2"

.field public static final MODULE_MULTISTAR:Ljava/lang/String; = "multistar"

.field public static final MODULE_MULTIWINDOW:Ljava/lang/String; = "multiwindow"

.field public static final MODULE_NAVSTAR:Ljava/lang/String; = "navigationbar"

.field public static final MODULE_NOTIFICATION:Ljava/lang/String; = "notification"

.field public static final MODULE_PROFILE:Ljava/lang/String; = "profile"

.field public static final MODULE_QSCOLORING:Ljava/lang/String; = "coloring"

.field public static final MODULE_RECENTS:Ljava/lang/String; = "recents"

.field public static final MODULE_SLIMINDICATOR:Ljava/lang/String; = "slimindicator"

.field public static final MODULE_TASKBAR:Ljava/lang/String; = "taskbar"

.field public static PLATFORM_VERSION_BIXBY2:I = 0x0

.field public static PLATFORM_VERSION_EMSYSTEMUIMANAGER:I = 0x0

.field public static PLATFORM_VERSION_LOCKSTAR:I = 0x0

.field public static PLATFORM_VERSION_MULTISTAR:I = 0x0

.field public static PLATFORM_VERSION_MULTIWINDOW:I = 0x0

.field public static PLATFORM_VERSION_NAVSTAR:I = 0x0

.field public static PLATFORM_VERSION_NOTIFICATION:I = 0x0

.field public static PLATFORM_VERSION_NOTISTAR:I = 0x0

.field public static PLATFORM_VERSION_PROFILE:I = 0x0

.field public static PLATFORM_VERSION_QSCOLORING:I = 0x0

.field public static PLATFORM_VERSION_RECENTS:I = 0x0

.field public static PLATFORM_VERSION_SLIMINDICATOR:I = 0x0

.field public static PLATFORM_VERSION_SPLUGINMANAGER:I = 0x0

.field public static PLATFORM_VERSION_TASKBAR:I = 0x0

.field private static final VERSION_BIXBY2:I = 0x3ea

.field private static final VERSION_LOCKSTAR:I = 0x7d0

.field private static final VERSION_MULTISTAR:I = 0x7d2

.field private static final VERSION_NAVSTAR:I = 0x7d1

.field private static final VERSION_NOTISTAR:I = 0x7d1

.field private static final VERSION_QSCOLORING:I = 0x7d3

.field private static final VERSION_RECENTS:I = 0x7d1

.field private static final VERSION_SLIMINDICATOR:I = 0x7d3

.field private static final VERSION_SPLUGINMANAGER:I = 0x3ea


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "SPlugin Platform Versions"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  SPLUGINMANAGER : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_SPLUGINMANAGER:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  EMSYSTEMUIMANAGER : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_EMSYSTEMUIMANAGER:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  RECENTS : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_RECENTS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  NOTIFICATION : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_NOTIFICATION:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  MULTIWINDOW : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_MULTIWINDOW:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  TASKBAR : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_TASKBAR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  LOCKSTAR : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_LOCKSTAR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  PROFILE : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_PROFILE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  SIMPLEINDICATOR : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_SLIMINDICATOR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  QSCOLORING : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_QSCOLORING:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  NAVILLERA : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_NAVSTAR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  NOTISTAR : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_NOTISTAR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  BIXBY2 : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_BIXBY2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  MULTISTAR : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_MULTISTAR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static initVersion()V
    .locals 3

    const/16 v0, 0x3ea

    sput v0, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_SPLUGINMANAGER:I

    const/16 v1, 0x7d1

    sput v1, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_RECENTS:I

    const/16 v2, 0x7d3

    sput v2, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_SLIMINDICATOR:I

    sput v2, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_QSCOLORING:I

    sput v1, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_NAVSTAR:I

    sput v1, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_NOTISTAR:I

    sput v0, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_BIXBY2:I

    const/16 v0, 0x7d2

    sput v0, Lcom/samsung/systemui/splugins/SPluginVersions;->PLATFORM_VERSION_MULTISTAR:I

    return-void
.end method
