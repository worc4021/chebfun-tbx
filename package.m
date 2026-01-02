function package(tbname,basedir,outdir,version)
arguments
    tbname (1,1) string = "chebfun"
    basedir (1,1) string {mustBeFolder} = fileparts(mfilename("fullpath"));
    outdir (1,1) string {mustBeFolder} = fileparts(mfilename("fullpath"));
    version (1,1) string = "1.0.0";
end

uuid = string(java.util.UUID.randomUUID);
opts = matlab.addons.toolbox.ToolboxOptions(basedir,uuid);
opts.ToolboxName = tbname;
opts.ToolboxVersion = version;
opts.OutputFile = fullfile(outdir,tbname+".mltbx");
matlab.addons.toolbox.packageToolbox(opts);
disp("Generated "+opts.OutputFile)

end