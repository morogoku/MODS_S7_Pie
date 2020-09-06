.class public Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSystemUtil;
.super Ljava/lang/Object;
.source "CocktailBarUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/utils/CocktailBarUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CocktailBarSystemUtil"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updateSysfsGripDisable(Z)V
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/sec/tsp/cmd"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-nez v2, :cond_15

    goto :goto_5a

    :cond_15
    # getter for: Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateSysfsGripDisable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v0, v2

    if-eqz p0, :cond_43

    const-string/jumbo v2, "set_grip_detection,0"

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_4f

    :cond_43
    const-string/jumbo v2, "set_grip_detection,1"

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    :goto_4f
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_52
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_52} :catch_7a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_52} :catch_70
    .catchall {:try_start_1 .. :try_end_52} :catchall_6e

    nop

    :try_start_53
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_56} :catch_57

    goto :goto_59

    :catch_57
    move-exception v1

    goto :goto_84

    :cond_59
    :goto_59
    goto :goto_84

    :cond_5a
    :goto_5a
    :try_start_5a
    # getter for: Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "updateSysfsGripDisable : file did not exists or canWrite"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_64
    .catch Ljava/io/FileNotFoundException; {:try_start_5a .. :try_end_64} :catch_7a
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_64} :catch_70
    .catchall {:try_start_5a .. :try_end_64} :catchall_6e

    if-eqz v0, :cond_6c

    :try_start_66
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_69} :catch_6a

    goto :goto_6c

    :catch_6a
    move-exception v2

    goto :goto_6d

    :cond_6c
    :goto_6c
    nop

    :goto_6d
    return-void

    :catchall_6e
    move-exception v1

    goto :goto_85

    :catch_70
    move-exception v1

    :try_start_71
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_6e

    if-eqz v0, :cond_59

    :try_start_76
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_79} :catch_57

    goto :goto_59

    :catch_7a
    move-exception v1

    :try_start_7b
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_7e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_6e

    if-eqz v0, :cond_59

    :try_start_80
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_83} :catch_57

    goto :goto_59

    :goto_84
    return-void

    :goto_85
    nop

    if-eqz v0, :cond_8e

    :try_start_88
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_8b} :catch_8c

    goto :goto_8e

    :catch_8c
    move-exception v2

    nop

    :cond_8e
    :goto_8e
    throw v1
.end method

.method public static updateWakeupArea(I)V
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/sec/tsp/cmd"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-nez v2, :cond_15

    goto :goto_42

    :cond_15
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v0, v2

    const/4 v2, 0x1

    if-ne p0, v2, :cond_2b

    const-string/jumbo v2, "select_wakeful_edge,0"

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_37

    :cond_2b
    const-string/jumbo v2, "select_wakeful_edge,1"

    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    :goto_37
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_3a
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_3a} :catch_58
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_3a} :catch_4e
    .catchall {:try_start_1 .. :try_end_3a} :catchall_4c

    nop

    :try_start_3b
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_3f

    goto :goto_41

    :catch_3f
    move-exception v1

    goto :goto_62

    :cond_41
    :goto_41
    goto :goto_62

    :cond_42
    :goto_42
    if-eqz v0, :cond_4a

    :try_start_44
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_47} :catch_48

    goto :goto_4a

    :catch_48
    move-exception v2

    goto :goto_4b

    :cond_4a
    :goto_4a
    nop

    :goto_4b
    return-void

    :catchall_4c
    move-exception v1

    goto :goto_63

    :catch_4e
    move-exception v1

    :try_start_4f
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_4c

    if-eqz v0, :cond_41

    :try_start_54
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_57} :catch_3f

    goto :goto_41

    :catch_58
    move-exception v1

    :try_start_59
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_4c

    if-eqz v0, :cond_41

    :try_start_5e
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_61} :catch_3f

    goto :goto_41

    :goto_62
    return-void

    :goto_63
    nop

    if-eqz v0, :cond_6c

    :try_start_66
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_69} :catch_6a

    goto :goto_6c

    :catch_6a
    move-exception v2

    nop

    :cond_6c
    :goto_6c
    throw v1
.end method

.method public static updateWakeupGesture(Landroid/content/Context;IZ)V
    .registers 8

    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v1

    if-eqz v1, :cond_1a

    # getter for: Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "updateWakeupGesture: factory binary"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1a
    if-eqz v0, :cond_8d

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-eqz v1, :cond_8d

    const/4 v1, 0x0

    :try_start_23
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/class/sec/tsp/cmd"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_60

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-nez v3, :cond_37

    goto :goto_60

    :cond_37
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v1, v3

    if-eqz p2, :cond_4c

    const-string/jumbo v3, "second_screen_enable,1"

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    goto :goto_58

    :cond_4c
    const-string/jumbo v3, "second_screen_enable,0"

    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    :goto_58
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_5b
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_5b} :catch_76
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_5b} :catch_6c
    .catchall {:try_start_23 .. :try_end_5b} :catchall_6a

    nop

    :try_start_5c
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5f} :catch_80

    goto :goto_82

    :cond_60
    :goto_60
    if-eqz v1, :cond_68

    :try_start_62
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_65} :catch_66

    goto :goto_68

    :catch_66
    move-exception v3

    goto :goto_69

    :cond_68
    :goto_68
    nop

    :goto_69
    return-void

    :catchall_6a
    move-exception v2

    goto :goto_83

    :catch_6c
    move-exception v2

    :try_start_6d
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_70
    .catchall {:try_start_6d .. :try_end_70} :catchall_6a

    if-eqz v1, :cond_82

    :try_start_72
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_75} :catch_80

    goto :goto_82

    :catch_76
    move-exception v2

    :try_start_77
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_6a

    if-eqz v1, :cond_82

    :try_start_7c
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_7c .. :try_end_7f} :catch_80

    goto :goto_82

    :catch_80
    move-exception v2

    goto :goto_8d

    :cond_82
    :goto_82
    goto :goto_8d

    :goto_83
    nop

    if-eqz v1, :cond_8c

    :try_start_86
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_89} :catch_8a

    goto :goto_8c

    :catch_8a
    move-exception v3

    nop

    :cond_8c
    :goto_8c
    throw v2

    :cond_8d
    :goto_8d
    return-void
.end method
