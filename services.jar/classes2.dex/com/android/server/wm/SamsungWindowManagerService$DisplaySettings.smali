.class Lcom/android/server/wm/SamsungWindowManagerService$DisplaySettings;
.super Ljava/lang/Object;
.source "SamsungWindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SamsungWindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisplaySettings"
.end annotation


# instance fields
.field density:I

.field densityStr:Ljava/lang/String;

.field hasDensity:Z

.field hasSize:Z

.field height:I

.field sizeStr:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/wm/SamsungWindowManagerService;

.field width:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/SamsungWindowManagerService;IIILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    iput-object p1, p0, Lcom/android/server/wm/SamsungWindowManagerService$DisplaySettings;->this$0:Lcom/android/server/wm/SamsungWindowManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/wm/SamsungWindowManagerService$DisplaySettings;->width:I

    iput p3, p0, Lcom/android/server/wm/SamsungWindowManagerService$DisplaySettings;->height:I

    iput p4, p0, Lcom/android/server/wm/SamsungWindowManagerService$DisplaySettings;->density:I

    iput-object p5, p0, Lcom/android/server/wm/SamsungWindowManagerService$DisplaySettings;->densityStr:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/wm/SamsungWindowManagerService$DisplaySettings;->sizeStr:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method setHasSetting(ZZ)V
    .registers 3

    iput-boolean p1, p0, Lcom/android/server/wm/SamsungWindowManagerService$DisplaySettings;->hasSize:Z

    iput-boolean p2, p0, Lcom/android/server/wm/SamsungWindowManagerService$DisplaySettings;->hasDensity:Z

    return-void
.end method
